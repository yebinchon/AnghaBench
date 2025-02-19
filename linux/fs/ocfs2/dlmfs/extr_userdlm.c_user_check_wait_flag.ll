; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_check_wait_flag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_check_wait_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_lock_res*, i32)* @user_check_wait_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_check_wait_flag(%struct.user_lock_res* %0, i32 %1) #0 {
  %3 = alloca %struct.user_lock_res*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.user_lock_res* %0, %struct.user_lock_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %7 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %10 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %15 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %14, i32 0, i32 1
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
