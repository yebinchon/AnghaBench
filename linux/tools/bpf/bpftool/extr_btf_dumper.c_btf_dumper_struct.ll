; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dumper_struct.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dumper_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dumper = type { i32, i32, i32 }
%struct.btf_type = type { i32 }
%struct.btf_member = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dumper*, i64, i8*)* @btf_dumper_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dumper_struct(%struct.btf_dumper* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_dumper*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.btf_type*, align 8
  %9 = alloca %struct.btf_member*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.btf_dumper* %0, %struct.btf_dumper** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %18 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.btf_type* @btf__type_by_id(i32 %19, i64 %20)
  store %struct.btf_type* %21, %struct.btf_type** %8, align 8
  %22 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %23 = icmp ne %struct.btf_type* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %121

27:                                               ; preds = %3
  %28 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %29 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BTF_INFO_KFLAG(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %33 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BTF_INFO_VLEN(i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %37 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @jsonw_start_object(i32 %38)
  %40 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %41 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %40, i64 1
  %42 = bitcast %struct.btf_type* %41 to %struct.btf_member*
  store %struct.btf_member* %42, %struct.btf_member** %9, align 8
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %112, %27
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %115

47:                                               ; preds = %43
  %48 = load %struct.btf_member*, %struct.btf_member** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %48, i64 %50
  %52 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load i64, i64* %15, align 8
  %58 = call i64 @BTF_MEMBER_BITFIELD_SIZE(i64 %57)
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i64 @BTF_MEMBER_BIT_OFFSET(i64 %59)
  store i64 %60, i64* %15, align 8
  br label %61

61:                                               ; preds = %56, %47
  %62 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %63 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %66 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.btf_member*, %struct.btf_member** %9, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %68, i64 %70
  %72 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @btf__name_by_offset(i32 %67, i32 %73)
  %75 = call i32 @jsonw_name(i32 %64, i32 %74)
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @BITS_ROUNDDOWN_BYTES(i64 %77)
  %79 = sext i32 %78 to i64
  %80 = getelementptr i8, i8* %76, i64 %79
  store i8* %80, i8** %10, align 8
  %81 = load i64, i64* %16, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %61
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @BITS_PER_BYTE_MASKED(i64 %85)
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %89 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %92 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @btf_dumper_bitfield(i64 %84, i32 %86, i8* %87, i32 %90, i32 %93)
  br label %111

95:                                               ; preds = %61
  %96 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %97 = load %struct.btf_member*, %struct.btf_member** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %97, i64 %99
  %101 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %15, align 8
  %104 = call i32 @BITS_PER_BYTE_MASKED(i64 %103)
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @btf_dumper_do_type(%struct.btf_dumper* %96, i32 %102, i32 %104, i8* %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  br label %115

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110, %83
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %43

115:                                              ; preds = %109, %43
  %116 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %117 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @jsonw_end_object(i32 %118)
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %115, %24
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i64) #1

declare dso_local i32 @BTF_INFO_KFLAG(i32) #1

declare dso_local i32 @BTF_INFO_VLEN(i32) #1

declare dso_local i32 @jsonw_start_object(i32) #1

declare dso_local i64 @BTF_MEMBER_BITFIELD_SIZE(i64) #1

declare dso_local i64 @BTF_MEMBER_BIT_OFFSET(i64) #1

declare dso_local i32 @jsonw_name(i32, i32) #1

declare dso_local i32 @btf__name_by_offset(i32, i32) #1

declare dso_local i32 @BITS_ROUNDDOWN_BYTES(i64) #1

declare dso_local i32 @btf_dumper_bitfield(i64, i32, i8*, i32, i32) #1

declare dso_local i32 @BITS_PER_BYTE_MASKED(i64) #1

declare dso_local i32 @btf_dumper_do_type(%struct.btf_dumper*, i32, i32, i8*) #1

declare dso_local i32 @jsonw_end_object(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
