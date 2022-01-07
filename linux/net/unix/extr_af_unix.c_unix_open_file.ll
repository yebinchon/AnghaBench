; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_open_file.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.path = type { i32 }
%struct.file = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.path, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @unix_open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_open_file(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.path, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.TYPE_4__* @sock_net(%struct.sock* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CAP_NET_ADMIN, align 4
  %12 = call i32 @ns_capable(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call %struct.TYPE_3__* @unix_sk(%struct.sock* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i32 @smp_load_acquire(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %64

26:                                               ; preds = %17
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call %struct.TYPE_3__* @unix_sk(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = bitcast %struct.path* %4 to i8*
  %31 = bitcast %struct.path* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = getelementptr inbounds %struct.path, %struct.path* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %64

38:                                               ; preds = %26
  %39 = call i32 @path_get(%struct.path* %4)
  %40 = load i32, i32* @O_CLOEXEC, align 4
  %41 = call i32 @get_unused_fd_flags(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %61

45:                                               ; preds = %38
  %46 = load i32, i32* @O_PATH, align 4
  %47 = call i32 (...) @current_cred()
  %48 = call %struct.file* @dentry_open(%struct.path* %4, i32 %46, i32 %47)
  store %struct.file* %48, %struct.file** %5, align 8
  %49 = load %struct.file*, %struct.file** %5, align 8
  %50 = call i64 @IS_ERR(%struct.file* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @put_unused_fd(i32 %53)
  %55 = load %struct.file*, %struct.file** %5, align 8
  %56 = call i32 @PTR_ERR(%struct.file* %55)
  store i32 %56, i32* %6, align 4
  br label %61

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = call i32 @fd_install(i32 %58, %struct.file* %59)
  br label %61

61:                                               ; preds = %57, %52, %44
  %62 = call i32 @path_put(%struct.path* %4)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %35, %23, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local %struct.TYPE_4__* @sock_net(%struct.sock*) #1

declare dso_local i32 @smp_load_acquire(i32*) #1

declare dso_local %struct.TYPE_3__* @unix_sk(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.file* @dentry_open(%struct.path*, i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
