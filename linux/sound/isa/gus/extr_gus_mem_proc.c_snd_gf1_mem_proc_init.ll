; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mem_proc.c_snd_gf1_mem_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mem_proc.c_snd_gf1_mem_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.gus_proc_private = type { i32, i64, i32, %struct.snd_gus_card* }
%struct.snd_info_entry = type { i64, %struct.TYPE_7__, i8*, %struct.gus_proc_private*, i8* }
%struct.TYPE_7__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"gus-ram-%i\00", align 1
@SNDRV_INFO_CONTENT_DATA = common dso_local global i8* null, align 8
@snd_gf1_mem_proc_free = common dso_local global i8* null, align 8
@snd_gf1_mem_proc_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"gus-rom-%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_mem_proc_init(%struct.snd_gus_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_gus_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca %struct.gus_proc_private*, align 8
  %7 = alloca %struct.snd_info_entry*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %85, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %88

11:                                               ; preds = %8
  %12 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %13 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %84

23:                                               ; preds = %11
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.gus_proc_private* @kzalloc(i32 32, i32 %24)
  store %struct.gus_proc_private* %25, %struct.gus_proc_private** %6, align 8
  %26 = load %struct.gus_proc_private*, %struct.gus_proc_private** %6, align 8
  %27 = icmp eq %struct.gus_proc_private* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %156

31:                                               ; preds = %23
  %32 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %33 = load %struct.gus_proc_private*, %struct.gus_proc_private** %6, align 8
  %34 = getelementptr inbounds %struct.gus_proc_private, %struct.gus_proc_private* %33, i32 0, i32 3
  store %struct.snd_gus_card* %32, %struct.snd_gus_card** %34, align 8
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %39 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %42 = call i32 @snd_card_proc_new(i32 %40, i8* %41, %struct.snd_info_entry** %7)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %83, label %44

44:                                               ; preds = %31
  %45 = load i8*, i8** @SNDRV_INFO_CONTENT_DATA, align 8
  %46 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %47 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.gus_proc_private*, %struct.gus_proc_private** %6, align 8
  %49 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %50 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %49, i32 0, i32 3
  store %struct.gus_proc_private* %48, %struct.gus_proc_private** %50, align 8
  %51 = load i8*, i8** @snd_gf1_mem_proc_free, align 8
  %52 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %53 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %55 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32* @snd_gf1_mem_proc_ops, i32** %56, align 8
  %57 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %58 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.gus_proc_private*, %struct.gus_proc_private** %6, align 8
  %68 = getelementptr inbounds %struct.gus_proc_private, %struct.gus_proc_private* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %70 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %80 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.gus_proc_private*, %struct.gus_proc_private** %6, align 8
  %82 = getelementptr inbounds %struct.gus_proc_private, %struct.gus_proc_private* %81, i32 0, i32 1
  store i64 %78, i64* %82, align 8
  br label %83

83:                                               ; preds = %44, %31
  br label %84

84:                                               ; preds = %83, %11
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %8

88:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %152, %88
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %90, 4
  br i1 %91, label %92, label %155

92:                                               ; preds = %89
  %93 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %94 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = shl i32 1, %97
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %151

101:                                              ; preds = %92
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.gus_proc_private* @kzalloc(i32 32, i32 %102)
  store %struct.gus_proc_private* %103, %struct.gus_proc_private** %6, align 8
  %104 = load %struct.gus_proc_private*, %struct.gus_proc_private** %6, align 8
  %105 = icmp eq %struct.gus_proc_private* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %156

109:                                              ; preds = %101
  %110 = load %struct.gus_proc_private*, %struct.gus_proc_private** %6, align 8
  %111 = getelementptr inbounds %struct.gus_proc_private, %struct.gus_proc_private* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %113 = load %struct.gus_proc_private*, %struct.gus_proc_private** %6, align 8
  %114 = getelementptr inbounds %struct.gus_proc_private, %struct.gus_proc_private* %113, i32 0, i32 3
  store %struct.snd_gus_card* %112, %struct.snd_gus_card** %114, align 8
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @sprintf(i8* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %119 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %122 = call i32 @snd_card_proc_new(i32 %120, i8* %121, %struct.snd_info_entry** %7)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %150, label %124

124:                                              ; preds = %109
  %125 = load i8*, i8** @SNDRV_INFO_CONTENT_DATA, align 8
  %126 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %127 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load %struct.gus_proc_private*, %struct.gus_proc_private** %6, align 8
  %129 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %130 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %129, i32 0, i32 3
  store %struct.gus_proc_private* %128, %struct.gus_proc_private** %130, align 8
  %131 = load i8*, i8** @snd_gf1_mem_proc_free, align 8
  %132 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %133 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %135 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i32* @snd_gf1_mem_proc_ops, i32** %136, align 8
  %137 = load i32, i32* %4, align 4
  %138 = mul nsw i32 %137, 4096
  %139 = mul nsw i32 %138, 1024
  %140 = load %struct.gus_proc_private*, %struct.gus_proc_private** %6, align 8
  %141 = getelementptr inbounds %struct.gus_proc_private, %struct.gus_proc_private* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %143 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %147 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load %struct.gus_proc_private*, %struct.gus_proc_private** %6, align 8
  %149 = getelementptr inbounds %struct.gus_proc_private, %struct.gus_proc_private* %148, i32 0, i32 1
  store i64 %145, i64* %149, align 8
  br label %150

150:                                              ; preds = %124, %109
  br label %151

151:                                              ; preds = %150, %92
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %89

155:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %106, %28
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.gus_proc_private* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_card_proc_new(i32, i8*, %struct.snd_info_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
