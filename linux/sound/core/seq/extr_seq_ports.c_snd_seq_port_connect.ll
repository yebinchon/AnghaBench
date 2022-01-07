; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_ports.c_snd_seq_port_connect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_ports.c_snd_seq_port_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i64 }
%struct.snd_seq_client_port = type { i32 }
%struct.snd_seq_port_subscribe = type { i32 }
%struct.snd_seq_subscribers = type { i32, i32, i32, %struct.snd_seq_port_subscribe }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_SUBS_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_port_connect(%struct.snd_seq_client* %0, %struct.snd_seq_client* %1, %struct.snd_seq_client_port* %2, %struct.snd_seq_client* %3, %struct.snd_seq_client_port* %4, %struct.snd_seq_port_subscribe* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_seq_client*, align 8
  %9 = alloca %struct.snd_seq_client*, align 8
  %10 = alloca %struct.snd_seq_client_port*, align 8
  %11 = alloca %struct.snd_seq_client*, align 8
  %12 = alloca %struct.snd_seq_client_port*, align 8
  %13 = alloca %struct.snd_seq_port_subscribe*, align 8
  %14 = alloca %struct.snd_seq_subscribers*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %8, align 8
  store %struct.snd_seq_client* %1, %struct.snd_seq_client** %9, align 8
  store %struct.snd_seq_client_port* %2, %struct.snd_seq_client_port** %10, align 8
  store %struct.snd_seq_client* %3, %struct.snd_seq_client** %11, align 8
  store %struct.snd_seq_client_port* %4, %struct.snd_seq_client_port** %12, align 8
  store %struct.snd_seq_port_subscribe* %5, %struct.snd_seq_port_subscribe** %13, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.snd_seq_subscribers* @kzalloc(i32 16, i32 %17)
  store %struct.snd_seq_subscribers* %18, %struct.snd_seq_subscribers** %14, align 8
  %19 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %14, align 8
  %20 = icmp ne %struct.snd_seq_subscribers* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %99

24:                                               ; preds = %6
  %25 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %14, align 8
  %26 = getelementptr inbounds %struct.snd_seq_subscribers, %struct.snd_seq_subscribers* %25, i32 0, i32 3
  %27 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %13, align 8
  %28 = bitcast %struct.snd_seq_port_subscribe* %26 to i8*
  %29 = bitcast %struct.snd_seq_port_subscribe* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %14, align 8
  %31 = getelementptr inbounds %struct.snd_seq_subscribers, %struct.snd_seq_subscribers* %30, i32 0, i32 2
  %32 = call i32 @atomic_set(i32* %31, i32 0)
  %33 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %14, align 8
  %34 = getelementptr inbounds %struct.snd_seq_subscribers, %struct.snd_seq_subscribers* %33, i32 0, i32 1
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %14, align 8
  %37 = getelementptr inbounds %struct.snd_seq_subscribers, %struct.snd_seq_subscribers* %36, i32 0, i32 0
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %13, align 8
  %40 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SNDRV_SEQ_PORT_SUBS_EXCLUSIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %15, align 4
  %48 = load %struct.snd_seq_client*, %struct.snd_seq_client** %9, align 8
  %49 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %10, align 8
  %50 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %14, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.snd_seq_client*, %struct.snd_seq_client** %8, align 8
  %53 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.snd_seq_client*, %struct.snd_seq_client** %9, align 8
  %56 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @check_and_subscribe_port(%struct.snd_seq_client* %48, %struct.snd_seq_client_port* %49, %struct.snd_seq_subscribers* %50, i32 1, i32 %51, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %24
  br label %95

64:                                               ; preds = %24
  %65 = load %struct.snd_seq_client*, %struct.snd_seq_client** %11, align 8
  %66 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %12, align 8
  %67 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %14, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.snd_seq_client*, %struct.snd_seq_client** %8, align 8
  %70 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.snd_seq_client*, %struct.snd_seq_client** %11, align 8
  %73 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @check_and_subscribe_port(%struct.snd_seq_client* %65, %struct.snd_seq_client_port* %66, %struct.snd_seq_subscribers* %67, i32 0, i32 %68, i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %82

81:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %99

82:                                               ; preds = %80
  %83 = load %struct.snd_seq_client*, %struct.snd_seq_client** %9, align 8
  %84 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %10, align 8
  %85 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %14, align 8
  %86 = load %struct.snd_seq_client*, %struct.snd_seq_client** %8, align 8
  %87 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.snd_seq_client*, %struct.snd_seq_client** %9, align 8
  %90 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @delete_and_unsubscribe_port(%struct.snd_seq_client* %83, %struct.snd_seq_client_port* %84, %struct.snd_seq_subscribers* %85, i32 1, i32 %93)
  br label %95

95:                                               ; preds = %82, %63
  %96 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %14, align 8
  %97 = call i32 @kfree(%struct.snd_seq_subscribers* %96)
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %95, %81, %21
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local %struct.snd_seq_subscribers* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @check_and_subscribe_port(%struct.snd_seq_client*, %struct.snd_seq_client_port*, %struct.snd_seq_subscribers*, i32, i32, i32) #1

declare dso_local i32 @delete_and_unsubscribe_port(%struct.snd_seq_client*, %struct.snd_seq_client_port*, %struct.snd_seq_subscribers*, i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_seq_subscribers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
