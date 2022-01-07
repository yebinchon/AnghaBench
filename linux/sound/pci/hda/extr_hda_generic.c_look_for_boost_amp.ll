; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_look_for_boost_amp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_look_for_boost_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i32, i32*, i32* }

@HDA_OUTPUT = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.nid_path*)* @look_for_boost_amp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @look_for_boost_amp(%struct.hda_codec* %0, %struct.nid_path* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.nid_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.nid_path* %1, %struct.nid_path** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %65, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %68

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %14 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = icmp sge i32 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %68

19:                                               ; preds = %11
  %20 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %21 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @HDA_OUTPUT, align 4
  %33 = call i64 @check_boost_vol(%struct.hda_codec* %30, i32 %31, i32 %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @HDA_OUTPUT, align 4
  %38 = call i32 @HDA_COMPOSE_AMP_VAL(i32 %36, i32 3, i32 0, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %68

39:                                               ; preds = %29, %19
  %40 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @HDA_INPUT, align 4
  %43 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %44 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @check_boost_vol(%struct.hda_codec* %40, i32 %41, i32 %42, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %39
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %55 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HDA_INPUT, align 4
  %62 = call i32 @HDA_COMPOSE_AMP_VAL(i32 %53, i32 3, i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %68

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %8

68:                                               ; preds = %52, %35, %18, %8
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @check_boost_vol(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @HDA_COMPOSE_AMP_VAL(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
