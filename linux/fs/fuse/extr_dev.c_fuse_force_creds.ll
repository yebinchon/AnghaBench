; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_force_creds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_force_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i32 }
%struct.fuse_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_req*)* @fuse_force_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_force_creds(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %5 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %6 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (...) @current_fsuid()
  %9 = call i32 @from_kuid_munged(i32 %7, i32 %8)
  %10 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %11 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 %9, i32* %13, align 4
  %14 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %15 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (...) @current_fsgid()
  %18 = call i32 @from_kgid_munged(i32 %16, i32 %17)
  %19 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %20 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @current, align 4
  %24 = call i32 @task_pid(i32 %23)
  %25 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %26 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pid_nr_ns(i32 %24, i32 %27)
  %29 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %30 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  ret void
}

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @from_kgid_munged(i32, i32) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @pid_nr_ns(i32, i32) #1

declare dso_local i32 @task_pid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
