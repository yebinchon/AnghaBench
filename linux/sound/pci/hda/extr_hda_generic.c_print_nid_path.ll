; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_print_nid_path.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_print_nid_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"%s%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s path: depth=%d '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i8*, %struct.nid_path*)* @print_nid_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_nid_path(%struct.hda_codec* %0, i8* %1, %struct.nid_path* %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nid_path*, align 8
  %7 = alloca [40 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.nid_path* %2, %struct.nid_path** %6, align 8
  %10 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  store i8 0, i8* %11, align 1
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %43, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %15 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sub i64 40, %24
  %26 = trunc i64 %25 to i32
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %29 = icmp ne i8* %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %32 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %33 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @scnprintf(i8* %19, i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %18
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %12

46:                                               ; preds = %12
  %47 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %50 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %53 = call i32 @codec_dbg(%struct.hda_codec* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 %51, i8* %52)
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
