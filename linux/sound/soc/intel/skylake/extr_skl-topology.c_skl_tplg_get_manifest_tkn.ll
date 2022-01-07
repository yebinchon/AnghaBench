; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_manifest_tkn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_manifest_tkn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_dev = type { %struct.TYPE_3__**, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_tplg_vendor_array = type { i32, i32, %struct.snd_soc_tplg_vendor_value_elem*, %struct.TYPE_4__*, i64 }
%struct.snd_soc_tplg_vendor_value_elem = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SKL_TKN_UUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Not an UUID token: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Too many UUID tokens\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, %struct.skl_dev*, i32)* @skl_tplg_get_manifest_tkn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_get_manifest_tkn(%struct.device* %0, i8* %1, %struct.skl_dev* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.skl_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.snd_soc_tplg_vendor_array*, align 8
  %16 = alloca %struct.snd_soc_tplg_vendor_value_elem*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.skl_dev* %2, %struct.skl_dev** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %146

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %136, %90, %52, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %144

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = bitcast i8* %31 to %struct.snd_soc_tplg_vendor_array*
  store %struct.snd_soc_tplg_vendor_array* %32, %struct.snd_soc_tplg_vendor_array** %15, align 8
  %33 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %15, align 8
  %34 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %15, align 8
  %41 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %109 [
    i32 129, label %43
    i32 128, label %61
  ]

43:                                               ; preds = %27
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %15, align 8
  %46 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %47 = call i32 @skl_tplg_get_str_tkn(%struct.device* %44, %struct.snd_soc_tplg_vendor_array* %45, %struct.skl_dev* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %146

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %13, align 4
  br label %23

61:                                               ; preds = %27
  %62 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %15, align 8
  %63 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SKL_TKN_UUID, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %15, align 8
  %72 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %146

79:                                               ; preds = %61
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %82 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %146

90:                                               ; preds = %79
  %91 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %92 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %93, i64 %96
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %15, align 8
  %101 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @guid_copy(i32* %99, i32* %103)
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %13, align 4
  br label %23

109:                                              ; preds = %27
  %110 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %15, align 8
  %111 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %110, i32 0, i32 2
  %112 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %111, align 8
  store %struct.snd_soc_tplg_vendor_value_elem* %112, %struct.snd_soc_tplg_vendor_value_elem** %16, align 8
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %130, %113
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %15, align 8
  %117 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  %120 = icmp sle i32 %115, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %114
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %16, align 8
  %124 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %125 = call i32 @skl_tplg_get_int_tkn(%struct.device* %122, %struct.snd_soc_tplg_vendor_value_elem* %123, %struct.skl_dev* %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %5, align 4
  br label %146

130:                                              ; preds = %121
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %10, align 4
  %134 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %16, align 8
  %135 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %134, i32 1
  store %struct.snd_soc_tplg_vendor_value_elem* %135, %struct.snd_soc_tplg_vendor_value_elem** %16, align 8
  br label %114

136:                                              ; preds = %114
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %23

144:                                              ; preds = %23
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %128, %85, %69, %50, %19
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @skl_tplg_get_str_tkn(%struct.device*, %struct.snd_soc_tplg_vendor_array*, %struct.skl_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @guid_copy(i32*, i32*) #1

declare dso_local i32 @skl_tplg_get_int_tkn(%struct.device*, %struct.snd_soc_tplg_vendor_value_elem*, %struct.skl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
