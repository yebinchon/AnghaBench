; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_get_conn_list.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_get_conn_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_conn_list = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_get_conn_list(%struct.hda_codec* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_conn_list*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %44, %3
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.hda_conn_list* @lookup_conn_list(%struct.hda_codec* %12, i32 %13)
  store %struct.hda_conn_list* %14, %struct.hda_conn_list** %10, align 8
  %15 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %16 = icmp ne %struct.hda_conn_list* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i32**, i32*** %7, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %22 = getelementptr inbounds %struct.hda_conn_list, %struct.hda_conn_list* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32**, i32*** %7, align 8
  store i32* %23, i32** %24, align 8
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %27 = getelementptr inbounds %struct.hda_conn_list, %struct.hda_conn_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  br label %45

29:                                               ; preds = %11
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @snd_BUG_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %45

36:                                               ; preds = %29
  %37 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @read_and_add_raw_conns(%struct.hda_codec* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  br label %11

45:                                               ; preds = %42, %33, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.hda_conn_list* @lookup_conn_list(%struct.hda_codec*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @read_and_add_raw_conns(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
