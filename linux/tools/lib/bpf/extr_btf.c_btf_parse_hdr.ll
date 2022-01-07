; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_parse_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_parse_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32, %struct.btf_header*, %struct.btf_header* }
%struct.btf_header = type { i64, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"BTF header not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BTF_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid BTF magic:%x\0A\00", align 1
@BTF_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported BTF version:%u\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported BTF flags:%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"BTF has no data\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Invalid BTF type section offset:%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Invalid BTF string section offset:%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"BTF type section offset >= string section offset. No type?\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"BTF type section is not aligned to 4 bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*)* @btf_parse_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_parse_hdr(%struct.btf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf*, align 8
  %4 = alloca %struct.btf_header*, align 8
  %5 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %3, align 8
  %6 = load %struct.btf*, %struct.btf** %3, align 8
  %7 = getelementptr inbounds %struct.btf, %struct.btf* %6, i32 0, i32 1
  %8 = load %struct.btf_header*, %struct.btf_header** %7, align 8
  store %struct.btf_header* %8, %struct.btf_header** %4, align 8
  %9 = load %struct.btf*, %struct.btf** %3, align 8
  %10 = getelementptr inbounds %struct.btf, %struct.btf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 32
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %124

18:                                               ; preds = %1
  %19 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %20 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BTF_MAGIC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %26 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %124

31:                                               ; preds = %18
  %32 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %33 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BTF_VERSION, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %39 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @ENOTSUP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %124

44:                                               ; preds = %31
  %45 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %46 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %51 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @ENOTSUP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %124

56:                                               ; preds = %44
  %57 = load %struct.btf*, %struct.btf** %3, align 8
  %58 = getelementptr inbounds %struct.btf, %struct.btf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, 32
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %124

69:                                               ; preds = %56
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %72 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %77 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %124

82:                                               ; preds = %69
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %85 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %90 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %124

95:                                               ; preds = %82
  %96 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %97 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %100 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %124

107:                                              ; preds = %95
  %108 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %109 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 2
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %124

117:                                              ; preds = %107
  %118 = load %struct.btf*, %struct.btf** %3, align 8
  %119 = getelementptr inbounds %struct.btf, %struct.btf* %118, i32 0, i32 1
  %120 = load %struct.btf_header*, %struct.btf_header** %119, align 8
  %121 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %120, i64 1
  %122 = load %struct.btf*, %struct.btf** %3, align 8
  %123 = getelementptr inbounds %struct.btf, %struct.btf* %122, i32 0, i32 2
  store %struct.btf_header* %121, %struct.btf_header** %123, align 8
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %117, %113, %103, %88, %75, %65, %49, %37, %24, %14
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
