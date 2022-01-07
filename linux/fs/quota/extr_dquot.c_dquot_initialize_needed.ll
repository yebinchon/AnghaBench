; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_initialize_needed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_initialize_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dquot = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_initialize_needed(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dquot**, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call i32 @dquot_active(%struct.inode* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.dquot** @i_dquot(%struct.inode* %11)
  store %struct.dquot** %12, %struct.dquot*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %33, %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAXQUOTAS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load %struct.dquot**, %struct.dquot*** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dquot*, %struct.dquot** %18, i64 %20
  %22 = load %struct.dquot*, %struct.dquot** %21, align 8
  %23 = icmp ne %struct.dquot* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @sb_has_quota_active(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %37

32:                                               ; preds = %24, %17
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %13

36:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @dquot_active(%struct.inode*) #1

declare dso_local %struct.dquot** @i_dquot(%struct.inode*) #1

declare dso_local i64 @sb_has_quota_active(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
