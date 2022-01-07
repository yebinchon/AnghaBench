; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff800_begin_session.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff800_begin_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SCODE_800 = common dso_local global i64 0, align 8
@FF800_TX_S800_FLAG = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@FF800_ISOC_COMM_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ff*, i32)* @ff800_begin_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff800_begin_session(%struct.snd_ff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_7__* @fw_parent_device(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %13, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %24, i32 0, i32 2
  %26 = call i32 @fw_iso_resources_update(%struct.TYPE_8__* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %61

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %2
  %33 = call i32 @cpu_to_le32(i32 -2147483648)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_7__* @fw_parent_device(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SCODE_800, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %32
  %50 = load i32, i32* @FF800_TX_S800_FLAG, align 4
  %51 = call i32 @cpu_to_le32(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %49, %32
  %55 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %59 = load i32, i32* @FF800_ISOC_COMM_START, align 4
  %60 = call i32 @snd_fw_transaction(i32 %57, i32 %58, i32 %59, i32* %7, i32 4, i32 0)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %54, %29
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_7__* @fw_parent_device(i32) #1

declare dso_local i32 @fw_iso_resources_update(%struct.TYPE_8__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
