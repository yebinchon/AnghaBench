; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_maybe_init_creds.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_maybe_init_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_cookie = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.socket = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scm_cookie*, %struct.socket*, %struct.sock*)* @maybe_init_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_init_creds(%struct.scm_cookie* %0, %struct.socket* %1, %struct.sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scm_cookie*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.msghdr, align 4
  store %struct.scm_cookie* %0, %struct.scm_cookie** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.sock* %2, %struct.sock** %7, align 8
  %10 = bitcast %struct.msghdr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.socket*, %struct.socket** %6, align 8
  %12 = load %struct.scm_cookie*, %struct.scm_cookie** %5, align 8
  %13 = call i32 @scm_send(%struct.socket* %11, %struct.msghdr* %9, %struct.scm_cookie* %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = call i64 @unix_passcred_enabled(%struct.socket* %19, %struct.sock* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load i32, i32* @current, align 4
  %25 = call i32 @task_tgid(i32 %24)
  %26 = call i32 @get_pid(i32 %25)
  %27 = load %struct.scm_cookie*, %struct.scm_cookie** %5, align 8
  %28 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.scm_cookie*, %struct.scm_cookie** %5, align 8
  %30 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.scm_cookie*, %struct.scm_cookie** %5, align 8
  %33 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @current_uid_gid(i32* %31, i32* %34)
  br label %36

36:                                               ; preds = %23, %18
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @scm_send(%struct.socket*, %struct.msghdr*, %struct.scm_cookie*, i32) #2

declare dso_local i64 @unix_passcred_enabled(%struct.socket*, %struct.sock*) #2

declare dso_local i32 @get_pid(i32) #2

declare dso_local i32 @task_tgid(i32) #2

declare dso_local i32 @current_uid_gid(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
