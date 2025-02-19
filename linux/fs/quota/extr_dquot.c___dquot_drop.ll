; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c___dquot_drop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c___dquot_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dquot = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@dq_data_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @__dquot_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dquot_drop(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dquot**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.dquot** @i_dquot(%struct.inode* %7)
  store %struct.dquot** %8, %struct.dquot*** %4, align 8
  %9 = load i32, i32* @MAXQUOTAS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca %struct.dquot*, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = call i32 @spin_lock(i32* @dq_data_lock)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MAXQUOTAS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.dquot**, %struct.dquot*** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dquot*, %struct.dquot** %19, i64 %21
  %23 = load %struct.dquot*, %struct.dquot** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dquot*, %struct.dquot** %12, i64 %25
  store %struct.dquot* %23, %struct.dquot** %26, align 8
  %27 = load %struct.dquot**, %struct.dquot*** %4, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.dquot*, %struct.dquot** %27, i64 %29
  store %struct.dquot* null, %struct.dquot** %30, align 8
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %14

34:                                               ; preds = %14
  %35 = call i32 @spin_unlock(i32* @dq_data_lock)
  %36 = call i32 @dqput_all(%struct.dquot** %12)
  %37 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %37)
  ret void
}

declare dso_local %struct.dquot** @i_dquot(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dqput_all(%struct.dquot**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
