; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_get_client_pool.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_get_client_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i64, %struct.TYPE_5__, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.snd_seq_client_pool = type { i64, i64, i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@USER_CLIENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_client*, i8*)* @snd_seq_ioctl_get_client_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_ioctl_get_client_pool(%struct.snd_seq_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_seq_client_pool*, align 8
  %7 = alloca %struct.snd_seq_client*, align 8
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.snd_seq_client_pool*
  store %struct.snd_seq_client_pool* %9, %struct.snd_seq_client_pool** %6, align 8
  %10 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %11 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_seq_client* @snd_seq_client_use_ptr(i32 %12)
  store %struct.snd_seq_client* %13, %struct.snd_seq_client** %7, align 8
  %14 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %15 = icmp eq %struct.snd_seq_client* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %86

19:                                               ; preds = %2
  %20 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %21 = call i32 @memset(%struct.snd_seq_client_pool* %20, i32 0, i32 32)
  %22 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %23 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %26 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %28 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %33 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %35 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %40 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %42 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %45 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %47 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = call i32 @snd_seq_unused_cells(%struct.TYPE_6__* %48)
  %50 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %51 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %53 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @USER_CLIENT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %19
  %58 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %59 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %64 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %66 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %69 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %71 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @snd_seq_fifo_unused_cells(i32 %74)
  %76 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %77 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %83

78:                                               ; preds = %19
  %79 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %80 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %82 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %57
  %84 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %85 = call i32 @snd_seq_client_unlock(%struct.snd_seq_client* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.snd_seq_client* @snd_seq_client_use_ptr(i32) #1

declare dso_local i32 @memset(%struct.snd_seq_client_pool*, i32, i32) #1

declare dso_local i32 @snd_seq_unused_cells(%struct.TYPE_6__*) #1

declare dso_local i64 @snd_seq_fifo_unused_cells(i32) #1

declare dso_local i32 @snd_seq_client_unlock(%struct.snd_seq_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
