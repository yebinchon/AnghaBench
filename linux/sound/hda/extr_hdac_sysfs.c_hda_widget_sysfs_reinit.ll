; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_sysfs.c_hda_widget_sysfs_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_sysfs.c_hda_widget_sysfs_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i64, i32, i64, %struct.hdac_widget_tree* }
%struct.hdac_widget_tree = type { i32, %struct.hdac_widget_tree* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@widget_node_group = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_widget_sysfs_reinit(%struct.hdac_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdac_widget_tree*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  store i64 %15, i64* %9, align 8
  %16 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %17 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %16, i32 0, i32 3
  %18 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %17, align 8
  %19 = icmp ne %struct.hdac_widget_tree* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %162

21:                                               ; preds = %3
  %22 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %23 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %22, i32 0, i32 3
  %24 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.hdac_widget_tree* @kmemdup(%struct.hdac_widget_tree* %24, i32 16, i32 %25)
  store %struct.hdac_widget_tree* %26, %struct.hdac_widget_tree** %8, align 8
  %27 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %8, align 8
  %28 = icmp ne %struct.hdac_widget_tree* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %162

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.hdac_widget_tree* @kcalloc(i32 %34, i32 16, i32 %35)
  %37 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %8, align 8
  %38 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %37, i32 0, i32 1
  store %struct.hdac_widget_tree* %36, %struct.hdac_widget_tree** %38, align 8
  %39 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %8, align 8
  %40 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %39, i32 0, i32 1
  %41 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %40, align 8
  %42 = icmp ne %struct.hdac_widget_tree* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %32
  %44 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %8, align 8
  %45 = call i32 @kfree(%struct.hdac_widget_tree* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %162

48:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  %49 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %50 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %82, %48
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %55 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %52
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62, %58
  %67 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %68 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %67, i32 0, i32 3
  %69 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %68, align 8
  %70 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %69, i32 0, i32 1
  %71 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %71, i64 %73
  %75 = bitcast %struct.hdac_widget_tree* %74 to { i32, %struct.hdac_widget_tree* }*
  %76 = getelementptr inbounds { i32, %struct.hdac_widget_tree* }, { i32, %struct.hdac_widget_tree* }* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds { i32, %struct.hdac_widget_tree* }, { i32, %struct.hdac_widget_tree* }* %75, i32 0, i32 1
  %79 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %78, align 8
  %80 = call i32 @free_widget_node(i32 %77, %struct.hdac_widget_tree* %79, i32* @widget_node_group)
  br label %81

81:                                               ; preds = %66, %62
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %10, align 8
  br label %52

87:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  %88 = load i64, i64* %6, align 8
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %138, %87
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %143

93:                                               ; preds = %89
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %96 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %102 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp sge i64 %100, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %99, %93
  %106 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %8, align 8
  %107 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %8, align 8
  %111 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %110, i32 0, i32 1
  %112 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %112, i64 %114
  %116 = call i32 @add_widget_node(i32 %108, i64 %109, i32* @widget_node_group, %struct.hdac_widget_tree* %115)
  br label %137

117:                                              ; preds = %99
  %118 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %8, align 8
  %119 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %118, i32 0, i32 1
  %120 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %120, i64 %122
  %124 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %125 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %124, i32 0, i32 3
  %126 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %125, align 8
  %127 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %126, i32 0, i32 1
  %128 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %131 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %129, %132
  %134 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %128, i64 %133
  %135 = bitcast %struct.hdac_widget_tree* %123 to i8*
  %136 = bitcast %struct.hdac_widget_tree* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 16, i1 false)
  br label %137

137:                                              ; preds = %117, %105
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  %141 = load i64, i64* %10, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %10, align 8
  br label %89

143:                                              ; preds = %89
  %144 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %145 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %144, i32 0, i32 3
  %146 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %145, align 8
  %147 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %146, i32 0, i32 1
  %148 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %147, align 8
  %149 = call i32 @kfree(%struct.hdac_widget_tree* %148)
  %150 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %151 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %150, i32 0, i32 3
  %152 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %151, align 8
  %153 = call i32 @kfree(%struct.hdac_widget_tree* %152)
  %154 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %8, align 8
  %155 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %156 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %155, i32 0, i32 3
  store %struct.hdac_widget_tree* %154, %struct.hdac_widget_tree** %156, align 8
  %157 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %8, align 8
  %158 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @KOBJ_CHANGE, align 4
  %161 = call i32 @kobject_uevent(i32 %159, i32 %160)
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %143, %43, %29, %20
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local %struct.hdac_widget_tree* @kmemdup(%struct.hdac_widget_tree*, i32, i32) #1

declare dso_local %struct.hdac_widget_tree* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.hdac_widget_tree*) #1

declare dso_local i32 @free_widget_node(i32, %struct.hdac_widget_tree*, i32*) #1

declare dso_local i32 @add_widget_node(i32, i64, i32*, %struct.hdac_widget_tree*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kobject_uevent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
