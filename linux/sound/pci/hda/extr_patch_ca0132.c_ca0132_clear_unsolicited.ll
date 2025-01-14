; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_clear_unsolicited.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_clear_unsolicited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@__const.ca0132_clear_unsolicited.pins = private unnamed_addr constant [7 x i32] [i32 11, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19], align 16
@AC_VERB_SET_UNSOLICITED_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_clear_unsolicited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_clear_unsolicited(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca [7 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = bitcast [7 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([7 x i32]* @__const.ca0132_clear_unsolicited.pins to i8*), i64 28, i1 false)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp ult i32 %7, 7
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AC_VERB_SET_UNSOLICITED_ENABLE, align 4
  %16 = call i32 @snd_hda_codec_write(%struct.hda_codec* %10, i32 %14, i32 0, i32 %15, i32 0)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %6

20:                                               ; preds = %6
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
