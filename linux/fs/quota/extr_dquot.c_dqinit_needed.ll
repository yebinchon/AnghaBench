; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dqinit_needed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dqinit_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dquot = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @dqinit_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dqinit_needed(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dquot**, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i64 @IS_NOQUOTA(%struct.inode* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.dquot** @i_dquot(%struct.inode* %13)
  store %struct.dquot** %14, %struct.dquot*** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dquot*, %struct.dquot** %18, i64 %20
  %22 = load %struct.dquot*, %struct.dquot** %21, align 8
  %23 = icmp ne %struct.dquot* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MAXQUOTAS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dquot*, %struct.dquot** %32, i64 %34
  %36 = load %struct.dquot*, %struct.dquot** %35, align 8
  %37 = icmp ne %struct.dquot* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %44

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %27

43:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %38, %17, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local %struct.dquot** @i_dquot(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
