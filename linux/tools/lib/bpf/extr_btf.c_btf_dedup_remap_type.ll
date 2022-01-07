; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_remap_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_remap_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dedup = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btf_type** }
%struct.btf_type = type { i32 }
%struct.btf_array = type { i32, i32 }
%struct.btf_member = type { i32 }
%struct.btf_param = type { i32 }
%struct.btf_var_secinfo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dedup*, i64)* @btf_dedup_remap_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dedup_remap_type(%struct.btf_dedup* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_dedup*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btf_array*, align 8
  %10 = alloca %struct.btf_member*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btf_param*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btf_var_secinfo*, align 8
  %15 = alloca i32, align 4
  store %struct.btf_dedup* %0, %struct.btf_dedup** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %17 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.btf_type**, %struct.btf_type*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.btf_type*, %struct.btf_type** %20, i64 %21
  %23 = load %struct.btf_type*, %struct.btf_type** %22, align 8
  store %struct.btf_type* %23, %struct.btf_type** %6, align 8
  %24 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %25 = call i32 @btf_kind(%struct.btf_type* %24)
  switch i32 %25, label %170 [
    i32 135, label %26
    i32 139, label %26
    i32 136, label %27
    i32 141, label %27
    i32 128, label %27
    i32 133, label %27
    i32 134, label %27
    i32 131, label %27
    i32 138, label %27
    i32 129, label %27
    i32 142, label %41
    i32 132, label %70
    i32 130, label %70
    i32 137, label %99
    i32 140, label %141
  ]

26:                                               ; preds = %2, %2
  br label %173

27:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %28 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %29 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %30 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @btf_dedup_remap_type_id(%struct.btf_dedup* %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %174

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %40 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %173

41:                                               ; preds = %2
  %42 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %43 = call %struct.btf_array* @btf_array(%struct.btf_type* %42)
  store %struct.btf_array* %43, %struct.btf_array** %9, align 8
  %44 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %45 = load %struct.btf_array*, %struct.btf_array** %9, align 8
  %46 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @btf_dedup_remap_type_id(%struct.btf_dedup* %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %174

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.btf_array*, %struct.btf_array** %9, align 8
  %56 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %58 = load %struct.btf_array*, %struct.btf_array** %9, align 8
  %59 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @btf_dedup_remap_type_id(%struct.btf_dedup* %57, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %174

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.btf_array*, %struct.btf_array** %9, align 8
  %69 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %173

70:                                               ; preds = %2, %2
  %71 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %72 = call %struct.btf_member* @btf_members(%struct.btf_type* %71)
  store %struct.btf_member* %72, %struct.btf_member** %10, align 8
  %73 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %74 = call i32 @btf_vlen(%struct.btf_type* %73)
  store i32 %74, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %95, %70
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %75
  %80 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %81 = load %struct.btf_member*, %struct.btf_member** %10, align 8
  %82 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @btf_dedup_remap_type_id(%struct.btf_dedup* %80, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %174

89:                                               ; preds = %79
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.btf_member*, %struct.btf_member** %10, align 8
  %92 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.btf_member*, %struct.btf_member** %10, align 8
  %94 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %93, i32 1
  store %struct.btf_member* %94, %struct.btf_member** %10, align 8
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %75

98:                                               ; preds = %75
  br label %173

99:                                               ; preds = %2
  %100 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %101 = call %struct.btf_param* @btf_params(%struct.btf_type* %100)
  store %struct.btf_param* %101, %struct.btf_param** %12, align 8
  %102 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %103 = call i32 @btf_vlen(%struct.btf_type* %102)
  store i32 %103, i32* %13, align 4
  %104 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %105 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %106 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @btf_dedup_remap_type_id(%struct.btf_dedup* %104, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %99
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %3, align 4
  br label %174

113:                                              ; preds = %99
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %116 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %137, %113
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %123 = load %struct.btf_param*, %struct.btf_param** %12, align 8
  %124 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @btf_dedup_remap_type_id(%struct.btf_dedup* %122, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %3, align 4
  br label %174

131:                                              ; preds = %121
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.btf_param*, %struct.btf_param** %12, align 8
  %134 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.btf_param*, %struct.btf_param** %12, align 8
  %136 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %135, i32 1
  store %struct.btf_param* %136, %struct.btf_param** %12, align 8
  br label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %117

140:                                              ; preds = %117
  br label %173

141:                                              ; preds = %2
  %142 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %143 = call %struct.btf_var_secinfo* @btf_var_secinfos(%struct.btf_type* %142)
  store %struct.btf_var_secinfo* %143, %struct.btf_var_secinfo** %14, align 8
  %144 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %145 = call i32 @btf_vlen(%struct.btf_type* %144)
  store i32 %145, i32* %15, align 4
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %166, %141
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %146
  %151 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %152 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %14, align 8
  %153 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @btf_dedup_remap_type_id(%struct.btf_dedup* %151, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %150
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %3, align 4
  br label %174

160:                                              ; preds = %150
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %14, align 8
  %163 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %14, align 8
  %165 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %164, i32 1
  store %struct.btf_var_secinfo* %165, %struct.btf_var_secinfo** %14, align 8
  br label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %146

169:                                              ; preds = %146
  br label %173

170:                                              ; preds = %2
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %174

173:                                              ; preds = %169, %140, %98, %66, %37, %26
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %170, %158, %129, %111, %87, %64, %51, %35
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local i32 @btf_dedup_remap_type_id(%struct.btf_dedup*, i32) #1

declare dso_local %struct.btf_array* @btf_array(%struct.btf_type*) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local %struct.btf_param* @btf_params(%struct.btf_type*) #1

declare dso_local %struct.btf_var_secinfo* @btf_var_secinfos(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
