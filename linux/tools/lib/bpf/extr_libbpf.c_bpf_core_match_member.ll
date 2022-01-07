; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_match_member.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_match_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_core_accessor = type { i32, i32, i8* }
%struct.btf = type { i32 }
%struct.bpf_core_spec = type { i64, i32, i32*, i32, %struct.bpf_core_accessor* }
%struct.btf_type = type { i32 }
%struct.btf_member = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BPF_CORE_SPEC_MAX_LEN = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, %struct.bpf_core_accessor*, %struct.btf*, i32, %struct.bpf_core_spec*, i32*)* @bpf_core_match_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_core_match_member(%struct.btf* %0, %struct.bpf_core_accessor* %1, %struct.btf* %2, i32 %3, %struct.bpf_core_spec* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btf*, align 8
  %9 = alloca %struct.bpf_core_accessor*, align 8
  %10 = alloca %struct.btf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_core_spec*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.btf_type*, align 8
  %15 = alloca %struct.btf_type*, align 8
  %16 = alloca %struct.btf_member*, align 8
  %17 = alloca %struct.btf_member*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.bpf_core_accessor*, align 8
  store %struct.btf* %0, %struct.btf** %8, align 8
  store %struct.bpf_core_accessor* %1, %struct.bpf_core_accessor** %9, align 8
  store %struct.btf* %2, %struct.btf** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.bpf_core_spec* %4, %struct.bpf_core_spec** %12, align 8
  store i32* %5, i32** %13, align 8
  %26 = load %struct.btf*, %struct.btf** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.btf_type* @skip_mods_and_typedefs(%struct.btf* %26, i32 %27, i32* %11)
  store %struct.btf_type* %28, %struct.btf_type** %15, align 8
  %29 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %30 = icmp ne %struct.btf_type* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %192

34:                                               ; preds = %6
  %35 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %36 = call i32 @btf_is_composite(%struct.btf_type* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %192

39:                                               ; preds = %34
  %40 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %9, align 8
  %41 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %20, align 4
  %43 = load %struct.btf*, %struct.btf** %8, align 8
  %44 = load i32, i32* %20, align 4
  %45 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %43, i32 %44)
  store %struct.btf_type* %45, %struct.btf_type** %14, align 8
  %46 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %47 = call %struct.btf_member* @btf_members(%struct.btf_type* %46)
  %48 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %9, align 8
  %49 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %47, i64 %51
  store %struct.btf_member* %52, %struct.btf_member** %16, align 8
  %53 = load %struct.btf*, %struct.btf** %8, align 8
  %54 = load %struct.btf_member*, %struct.btf_member** %16, align 8
  %55 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @btf__name_by_offset(%struct.btf* %53, i32 %56)
  store i8* %57, i8** %18, align 8
  %58 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %59 = call i32 @btf_vlen(%struct.btf_type* %58)
  store i32 %59, i32* %22, align 4
  %60 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %61 = call %struct.btf_member* @btf_members(%struct.btf_type* %60)
  store %struct.btf_member* %61, %struct.btf_member** %17, align 8
  store i32 0, i32* %21, align 4
  br label %62

62:                                               ; preds = %186, %39
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %22, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %191

66:                                               ; preds = %62
  %67 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %68 = load i32, i32* %21, align 4
  %69 = call i64 @btf_member_bitfield_size(%struct.btf_type* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %186

72:                                               ; preds = %66
  %73 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @btf_member_bit_offset(%struct.btf_type* %73, i32 %74)
  store i32 %75, i32* %24, align 4
  %76 = load i32, i32* %24, align 4
  %77 = srem i32 %76, 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %186

80:                                               ; preds = %72
  %81 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %12, align 8
  %82 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BPF_CORE_SPEC_MAX_LEN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @E2BIG, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %192

89:                                               ; preds = %80
  %90 = load i32, i32* %24, align 4
  %91 = sdiv i32 %90, 8
  %92 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %12, align 8
  %93 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* %21, align 4
  %97 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %12, align 8
  %98 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %12, align 8
  %101 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %101, align 8
  %104 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %96, i32* %104, align 4
  %105 = load %struct.btf*, %struct.btf** %10, align 8
  %106 = load %struct.btf_member*, %struct.btf_member** %17, align 8
  %107 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @btf__name_by_offset(%struct.btf* %105, i32 %108)
  store i8* %109, i8** %19, align 8
  %110 = load i8*, i8** %19, align 8
  %111 = call i64 @str_is_empty(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %89
  %114 = load %struct.btf*, %struct.btf** %8, align 8
  %115 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %9, align 8
  %116 = load %struct.btf*, %struct.btf** %10, align 8
  %117 = load %struct.btf_member*, %struct.btf_member** %17, align 8
  %118 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %12, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @bpf_core_match_member(%struct.btf* %114, %struct.bpf_core_accessor* %115, %struct.btf* %116, i32 %119, %struct.bpf_core_spec* %120, i32* %121)
  store i32 %122, i32* %23, align 4
  %123 = load i32, i32* %23, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load i32, i32* %23, align 4
  store i32 %126, i32* %7, align 4
  br label %192

127:                                              ; preds = %113
  br label %175

128:                                              ; preds = %89
  %129 = load i8*, i8** %18, align 8
  %130 = load i8*, i8** %19, align 8
  %131 = call i64 @strcmp(i8* %129, i8* %130)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %174

133:                                              ; preds = %128
  %134 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %12, align 8
  %135 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %134, i32 0, i32 4
  %136 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %135, align 8
  %137 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %12, align 8
  %138 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %136, i64 %141
  store %struct.bpf_core_accessor* %142, %struct.bpf_core_accessor** %25, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %25, align 8
  %145 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %21, align 4
  %147 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %25, align 8
  %148 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i8*, i8** %19, align 8
  %150 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %25, align 8
  %151 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load %struct.btf_member*, %struct.btf_member** %17, align 8
  %153 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %13, align 8
  store i32 %154, i32* %155, align 4
  %156 = load %struct.btf*, %struct.btf** %8, align 8
  %157 = load %struct.btf_member*, %struct.btf_member** %16, align 8
  %158 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.btf*, %struct.btf** %10, align 8
  %161 = load %struct.btf_member*, %struct.btf_member** %17, align 8
  %162 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @bpf_core_fields_are_compat(%struct.btf* %156, i32 %159, %struct.btf* %160, i32 %163)
  store i32 %164, i32* %23, align 4
  %165 = load i32, i32* %23, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %133
  %168 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %12, align 8
  %169 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %167, %133
  %173 = load i32, i32* %23, align 4
  store i32 %173, i32* %7, align 4
  br label %192

174:                                              ; preds = %128
  br label %175

175:                                              ; preds = %174, %127
  %176 = load i32, i32* %24, align 4
  %177 = sdiv i32 %176, 8
  %178 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %12, align 8
  %179 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %12, align 8
  %183 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, -1
  store i64 %185, i64* %183, align 8
  br label %186

186:                                              ; preds = %175, %79, %71
  %187 = load i32, i32* %21, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %21, align 4
  %189 = load %struct.btf_member*, %struct.btf_member** %17, align 8
  %190 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %189, i32 1
  store %struct.btf_member* %190, %struct.btf_member** %17, align 8
  br label %62

191:                                              ; preds = %62
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %191, %172, %125, %86, %38, %31
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local %struct.btf_type* @skip_mods_and_typedefs(%struct.btf*, i32, i32*) #1

declare dso_local i32 @btf_is_composite(%struct.btf_type*) #1

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i8* @btf__name_by_offset(%struct.btf*, i32) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i64 @btf_member_bitfield_size(%struct.btf_type*, i32) #1

declare dso_local i32 @btf_member_bit_offset(%struct.btf_type*, i32) #1

declare dso_local i64 @str_is_empty(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bpf_core_fields_are_compat(%struct.btf*, i32, %struct.btf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
