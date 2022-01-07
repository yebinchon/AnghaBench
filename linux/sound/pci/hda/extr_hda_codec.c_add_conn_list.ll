; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_add_conn_list.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_add_conn_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_conn_list = type { i32, i32, i32, i32 }

@conns = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32*)* @add_conn_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_conn_list(%struct.hda_codec* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hda_conn_list*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %12 = load i32, i32* @conns, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @struct_size(%struct.hda_conn_list* %11, i32 %12, i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.hda_conn_list* @kmalloc(i32 %14, i32 %15)
  store %struct.hda_conn_list* %16, %struct.hda_conn_list** %10, align 8
  %17 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %18 = icmp ne %struct.hda_conn_list* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %43

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %25 = getelementptr inbounds %struct.hda_conn_list, %struct.hda_conn_list* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %28 = getelementptr inbounds %struct.hda_conn_list, %struct.hda_conn_list* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %30 = getelementptr inbounds %struct.hda_conn_list, %struct.hda_conn_list* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memcpy(i32 %31, i32* %32, i32 %36)
  %38 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %39 = getelementptr inbounds %struct.hda_conn_list, %struct.hda_conn_list* %38, i32 0, i32 1
  %40 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %41 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %40, i32 0, i32 0
  %42 = call i32 @list_add(i32* %39, i32* %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %22, %19
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.hda_conn_list* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.hda_conn_list*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
