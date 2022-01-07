; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_common.c_vcc_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_common.c_vcc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.sock = type { i32, i32, i32, i32, i32 }
%struct.atm_vcc = type { i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_4__, i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@vcc_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vcc_def_wakeup = common dso_local global i32 0, align 4
@vcc_write_space = common dso_local global i32 0, align 4
@vcc_sock_destruct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcc_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.atm_vcc*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.socket*, %struct.socket** %8, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.socket*, %struct.socket** %8, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SOCK_STREAM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %86

24:                                               ; preds = %5
  %25 = load %struct.net*, %struct.net** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.sock* @sk_alloc(%struct.net* %25, i32 %26, i32 %27, i32* @vcc_proto, i32 %28)
  store %struct.sock* %29, %struct.sock** %12, align 8
  %30 = load %struct.sock*, %struct.sock** %12, align 8
  %31 = icmp ne %struct.sock* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %86

35:                                               ; preds = %24
  %36 = load %struct.socket*, %struct.socket** %8, align 8
  %37 = load %struct.sock*, %struct.sock** %12, align 8
  %38 = call i32 @sock_init_data(%struct.socket* %36, %struct.sock* %37)
  %39 = load i32, i32* @vcc_def_wakeup, align 4
  %40 = load %struct.sock*, %struct.sock** %12, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @vcc_write_space, align 4
  %43 = load %struct.sock*, %struct.sock** %12, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sock*, %struct.sock** %12, align 8
  %46 = call %struct.atm_vcc* @atm_sk(%struct.sock* %45)
  store %struct.atm_vcc* %46, %struct.atm_vcc** %13, align 8
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %48 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %47, i32 0, i32 12
  store i32* null, i32** %48, align 8
  %49 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %50 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %49, i32 0, i32 11
  %51 = call i32 @memset(i32* %50, i32 0, i32 4)
  %52 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %53 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %52, i32 0, i32 10
  %54 = call i32 @memset(i32* %53, i32 0, i32 4)
  %55 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %56 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 65536, i32* %58, align 8
  %59 = load %struct.sock*, %struct.sock** %12, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 2
  %61 = call i32 @refcount_set(i32* %60, i32 1)
  %62 = load %struct.sock*, %struct.sock** %12, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 1
  %64 = call i32 @atomic_set(i32* %63, i32 0)
  %65 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %66 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %65, i32 0, i32 8
  store i32* null, i32** %66, align 8
  %67 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %68 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %67, i32 0, i32 7
  store i32* null, i32** %68, align 8
  %69 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %70 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %69, i32 0, i32 6
  store i32* null, i32** %70, align 8
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %72 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %71, i32 0, i32 5
  store i32* null, i32** %72, align 8
  %73 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %74 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %73, i32 0, i32 4
  store i32* null, i32** %74, align 8
  %75 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %76 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %78 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %80 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %82 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @vcc_sock_destruct, align 4
  %84 = load %struct.sock*, %struct.sock** %12, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %35, %32, %21
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.atm_vcc* @atm_sk(%struct.sock*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
