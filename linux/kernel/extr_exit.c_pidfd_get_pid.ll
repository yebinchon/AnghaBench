; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_pidfd_get_pid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_pidfd_get_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32 }
%struct.fd = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pid* (i32)* @pidfd_get_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pid* @pidfd_get_pid(i32 %0) #0 {
  %2 = alloca %struct.pid*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd, align 4
  %5 = alloca %struct.pid*, align 8
  %6 = alloca %struct.fd, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @fdget(i32 %7)
  %9 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = bitcast %struct.fd* %4 to i8*
  %11 = bitcast %struct.fd* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = getelementptr inbounds %struct.fd, %struct.fd* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EBADF, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.pid* @ERR_PTR(i32 %17)
  store %struct.pid* %18, %struct.pid** %2, align 8
  br label %34

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.fd, %struct.fd* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.pid* @pidfd_pid(i32 %21)
  store %struct.pid* %22, %struct.pid** %5, align 8
  %23 = load %struct.pid*, %struct.pid** %5, align 8
  %24 = call i32 @IS_ERR(%struct.pid* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load %struct.pid*, %struct.pid** %5, align 8
  %28 = call i32 @get_pid(%struct.pid* %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = getelementptr inbounds %struct.fd, %struct.fd* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fdput(i32 %31)
  %33 = load %struct.pid*, %struct.pid** %5, align 8
  store %struct.pid* %33, %struct.pid** %2, align 8
  br label %34

34:                                               ; preds = %29, %15
  %35 = load %struct.pid*, %struct.pid** %2, align 8
  ret %struct.pid* %35
}

declare dso_local i32 @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.pid* @ERR_PTR(i32) #1

declare dso_local %struct.pid* @pidfd_pid(i32) #1

declare dso_local i32 @IS_ERR(%struct.pid*) #1

declare dso_local i32 @get_pid(%struct.pid*) #1

declare dso_local i32 @fdput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
