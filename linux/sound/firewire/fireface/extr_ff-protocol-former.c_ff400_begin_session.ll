; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff400_begin_session.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff400_begin_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32, %struct.TYPE_8__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@FF400_RX_PACKET_FORMAT = common dso_local global i32 0, align 4
@FF400_TX_PACKET_FORMAT = common dso_local global i32 0, align 4
@FF400_ISOC_COMM_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ff*, i32)* @ff400_begin_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff400_begin_session(%struct.snd_ff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_9__* @fw_parent_device(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %13, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %2
  %24 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %24, i32 0, i32 2
  %26 = call i32 @fw_iso_resources_update(%struct.TYPE_10__* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %94

31:                                               ; preds = %23
  %32 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %33 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %32, i32 0, i32 3
  %34 = call i32 @fw_iso_resources_update(%struct.TYPE_10__* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %94

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 3
  %46 = shl i32 %45, 8
  %47 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %46, %50
  %52 = call i32 @cpu_to_le32(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %54 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %57 = load i32, i32* @FF400_RX_PACKET_FORMAT, align 4
  %58 = call i32 @snd_fw_transaction(i32 %55, i32 %56, i32 %57, i32* %7, i32 4, i32 0)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %40
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %94

63:                                               ; preds = %40
  %64 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %65 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 5
  %69 = or i32 -2147483648, %68
  %70 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %69, %73
  %75 = call i32 @cpu_to_le32(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %77 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %80 = load i32, i32* @FF400_TX_PACKET_FORMAT, align 4
  %81 = call i32 @snd_fw_transaction(i32 %78, i32 %79, i32 %80, i32* %7, i32 4, i32 0)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %63
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %94

86:                                               ; preds = %63
  %87 = call i32 @cpu_to_le32(i32 1)
  store i32 %87, i32* %7, align 4
  %88 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %89 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %92 = load i32, i32* @FF400_ISOC_COMM_START, align 4
  %93 = call i32 @snd_fw_transaction(i32 %90, i32 %91, i32 %92, i32* %7, i32 4, i32 0)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %86, %84, %61, %37, %29
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_9__* @fw_parent_device(i32) #1

declare dso_local i32 @fw_iso_resources_update(%struct.TYPE_10__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
