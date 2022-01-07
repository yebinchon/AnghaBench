; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_process_init_limits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_process_init_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i64, i64, i32 }
%struct.fuse_init_out = type { i32, i64, i64 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@max_user_bgreq = common dso_local global i64 0, align 8
@max_user_congthresh = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_init_out*)* @process_init_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_init_limits(%struct.fuse_conn* %0, %struct.fuse_init_out* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_init_out*, align 8
  %5 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_init_out* %1, %struct.fuse_init_out** %4, align 8
  %6 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %7 = call i32 @capable(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.fuse_init_out*, %struct.fuse_init_out** %4, align 8
  %9 = getelementptr inbounds %struct.fuse_init_out, %struct.fuse_init_out* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 13
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %70

13:                                               ; preds = %2
  %14 = call i32 @sanitize_global_limit(i64* @max_user_bgreq)
  %15 = call i32 @sanitize_global_limit(i64* @max_user_congthresh)
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %17 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.fuse_init_out*, %struct.fuse_init_out** %4, align 8
  %20 = getelementptr inbounds %struct.fuse_init_out, %struct.fuse_init_out* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %13
  %24 = load %struct.fuse_init_out*, %struct.fuse_init_out** %4, align 8
  %25 = getelementptr inbounds %struct.fuse_init_out, %struct.fuse_init_out* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %28 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %23
  %32 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %33 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @max_user_bgreq, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* @max_user_bgreq, align 8
  %39 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %40 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %31, %23
  br label %42

42:                                               ; preds = %41, %13
  %43 = load %struct.fuse_init_out*, %struct.fuse_init_out** %4, align 8
  %44 = getelementptr inbounds %struct.fuse_init_out, %struct.fuse_init_out* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.fuse_init_out*, %struct.fuse_init_out** %4, align 8
  %49 = getelementptr inbounds %struct.fuse_init_out, %struct.fuse_init_out* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %52 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %47
  %56 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %57 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @max_user_congthresh, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64, i64* @max_user_congthresh, align 8
  %63 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %64 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %55, %47
  br label %66

66:                                               ; preds = %65, %42
  %67 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %68 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %67, i32 0, i32 2
  %69 = call i32 @spin_unlock(i32* %68)
  br label %70

70:                                               ; preds = %66, %12
  ret void
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @sanitize_global_limit(i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
