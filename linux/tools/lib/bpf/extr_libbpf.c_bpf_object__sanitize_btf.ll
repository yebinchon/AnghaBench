; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__sanitize_btf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__sanitize_btf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { %struct.btf*, %struct.TYPE_2__ }
%struct.btf = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.btf_type = type { i32, i8*, i32 }
%struct.btf_var_secinfo = type { i32, i32 }
%struct.btf_member = type { i32, i32, i32 }

@BTF_KIND_INT = common dso_local global i32 0, align 4
@BTF_KIND_STRUCT = common dso_local global i32 0, align 4
@BTF_KIND_ENUM = common dso_local global i32 0, align 4
@BTF_KIND_TYPEDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_object*)* @bpf_object__sanitize_btf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_object__sanitize_btf(%struct.bpf_object* %0) #0 {
  %2 = alloca %struct.bpf_object*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btf_var_secinfo*, align 8
  %11 = alloca %struct.btf_member*, align 8
  %12 = alloca %struct.btf_type*, align 8
  %13 = alloca i8*, align 8
  store %struct.bpf_object* %0, %struct.bpf_object** %2, align 8
  %14 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %15 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  %18 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %19 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %23 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %22, i32 0, i32 0
  %24 = load %struct.btf*, %struct.btf** %23, align 8
  store %struct.btf* %24, %struct.btf** %5, align 8
  %25 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %26 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %25, i32 0, i32 0
  %27 = load %struct.btf*, %struct.btf** %26, align 8
  %28 = icmp ne %struct.btf* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %1
  br label %176

36:                                               ; preds = %32, %29
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %173, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.btf*, %struct.btf** %5, align 8
  %40 = call i32 @btf__get_nr_types(%struct.btf* %39)
  %41 = icmp sle i32 %38, %40
  br i1 %41, label %42, label %176

42:                                               ; preds = %37
  %43 = load %struct.btf*, %struct.btf** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @btf__type_by_id(%struct.btf* %43, i32 %44)
  %46 = inttoptr i64 %45 to %struct.btf_type*
  store %struct.btf_type* %46, %struct.btf_type** %6, align 8
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %42
  %50 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %51 = call i64 @btf_is_var(%struct.btf_type* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* @BTF_KIND_INT, align 4
  %55 = call i8* @BTF_INFO_ENC(i32 %54, i32 0, i32 0)
  %56 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %57 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %59 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = call i32 @BTF_INT_ENC(i32 0, i32 0, i32 8)
  %61 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %62 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %61, i64 1
  %63 = bitcast %struct.btf_type* %62 to i32*
  store i32 %60, i32* %63, align 4
  br label %172

64:                                               ; preds = %49, %42
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %140, label %67

67:                                               ; preds = %64
  %68 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %69 = call i64 @btf_is_datasec(%struct.btf_type* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %140

71:                                               ; preds = %67
  %72 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %73 = call %struct.btf_var_secinfo* @btf_var_secinfos(%struct.btf_type* %72)
  store %struct.btf_var_secinfo* %73, %struct.btf_var_secinfo** %10, align 8
  %74 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %75 = call %struct.btf_member* @btf_members(%struct.btf_type* %74)
  store %struct.btf_member* %75, %struct.btf_member** %11, align 8
  %76 = load %struct.btf*, %struct.btf** %5, align 8
  %77 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %78 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @btf__name_by_offset(%struct.btf* %76, i32 %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %13, align 8
  br label %82

82:                                               ; preds = %93, %71
  %83 = load i8*, i8** %13, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i8*, i8** %13, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 46
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i8*, i8** %13, align 8
  store i8 95, i8* %92, align 1
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %13, align 8
  br label %82

96:                                               ; preds = %82
  %97 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %98 = call i32 @btf_vlen(%struct.btf_type* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* @BTF_KIND_STRUCT, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i8* @BTF_INFO_ENC(i32 %99, i32 0, i32 %100)
  %102 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %103 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %132, %96
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %104
  %109 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %10, align 8
  %110 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %111, 8
  %113 = load %struct.btf_member*, %struct.btf_member** %11, align 8
  %114 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %10, align 8
  %116 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.btf_member*, %struct.btf_member** %11, align 8
  %119 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.btf*, %struct.btf** %5, align 8
  %121 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %10, align 8
  %122 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @btf__type_by_id(%struct.btf* %120, i32 %123)
  %125 = inttoptr i64 %124 to i8*
  %126 = bitcast i8* %125 to %struct.btf_type*
  store %struct.btf_type* %126, %struct.btf_type** %12, align 8
  %127 = load %struct.btf_type*, %struct.btf_type** %12, align 8
  %128 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.btf_member*, %struct.btf_member** %11, align 8
  %131 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %108
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  %135 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %10, align 8
  %136 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %135, i32 1
  store %struct.btf_var_secinfo* %136, %struct.btf_var_secinfo** %10, align 8
  %137 = load %struct.btf_member*, %struct.btf_member** %11, align 8
  %138 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %137, i32 1
  store %struct.btf_member* %138, %struct.btf_member** %11, align 8
  br label %104

139:                                              ; preds = %104
  br label %171

140:                                              ; preds = %67, %64
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %157, label %143

143:                                              ; preds = %140
  %144 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %145 = call i64 @btf_is_func_proto(%struct.btf_type* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %149 = call i32 @btf_vlen(%struct.btf_type* %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* @BTF_KIND_ENUM, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i8* @BTF_INFO_ENC(i32 %150, i32 0, i32 %151)
  %153 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %154 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %156 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %155, i32 0, i32 0
  store i32 4, i32* %156, align 8
  br label %170

157:                                              ; preds = %143, %140
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %157
  %161 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %162 = call i64 @btf_is_func(%struct.btf_type* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i32, i32* @BTF_KIND_TYPEDEF, align 4
  %166 = call i8* @BTF_INFO_ENC(i32 %165, i32 0, i32 0)
  %167 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %168 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  br label %169

169:                                              ; preds = %164, %160, %157
  br label %170

170:                                              ; preds = %169, %147
  br label %171

171:                                              ; preds = %170, %139
  br label %172

172:                                              ; preds = %171, %53
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %37

176:                                              ; preds = %35, %37
  ret void
}

declare dso_local i32 @btf__get_nr_types(%struct.btf*) #1

declare dso_local i64 @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local i64 @btf_is_var(%struct.btf_type*) #1

declare dso_local i8* @BTF_INFO_ENC(i32, i32, i32) #1

declare dso_local i32 @BTF_INT_ENC(i32, i32, i32) #1

declare dso_local i64 @btf_is_datasec(%struct.btf_type*) #1

declare dso_local %struct.btf_var_secinfo* @btf_var_secinfos(%struct.btf_type*) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i64 @btf__name_by_offset(%struct.btf*, i32) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i64 @btf_is_func_proto(%struct.btf_type*) #1

declare dso_local i64 @btf_is_func(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
