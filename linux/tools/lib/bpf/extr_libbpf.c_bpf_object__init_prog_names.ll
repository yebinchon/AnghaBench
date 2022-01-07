; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_prog_names.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_prog_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i64, %struct.TYPE_6__, %struct.bpf_program* }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.bpf_program = type { i64, i8*, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@STB_GLOBAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"failed to get sym name string for prog %s\0A\00", align 1
@LIBBPF_ERRNO__LIBELF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to find sym for prog %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to allocate memory for prog sym %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*)* @bpf_object__init_prog_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__init_prog_names(%struct.bpf_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  store %struct.bpf_object* %0, %struct.bpf_object** %3, align 8
  %10 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %11 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %124, %1
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %127

20:                                               ; preds = %14
  store i8* null, i8** %8, align 8
  %21 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %22 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %21, i32 0, i32 2
  %23 = load %struct.bpf_program*, %struct.bpf_program** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %23, i64 %24
  store %struct.bpf_program* %25, %struct.bpf_program** %5, align 8
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %83, %20
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 16
  %33 = icmp ult i64 %27, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %26
  %39 = phi i1 [ false, %26 ], [ %37, %34 ]
  br i1 %39, label %40, label %86

40:                                               ; preds = %38
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @gelf_getsym(%struct.TYPE_8__* %41, i64 %42, %struct.TYPE_7__* %9)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %83

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %50 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %83

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @GELF_ST_BIND(i32 %56)
  %58 = load i64, i64* @STB_GLOBAL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %83

61:                                               ; preds = %54
  %62 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %63 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %67 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @elf_strptr(i32 %65, i32 %69, i32 %71)
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %61
  %76 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %77 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @LIBBPF_ERRNO__LIBELF, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %128

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82, %60, %53, %45
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %26

86:                                               ; preds = %38
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %91 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %94 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %99

99:                                               ; preds = %98, %89, %86
  %100 = load i8*, i8** %8, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %104 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %128

109:                                              ; preds = %99
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @strdup(i8* %110)
  %112 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %113 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %115 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %109
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %119)
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %128

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %6, align 8
  br label %14

127:                                              ; preds = %14
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %118, %102, %75
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @gelf_getsym(%struct.TYPE_8__*, i64, %struct.TYPE_7__*) #1

declare dso_local i64 @GELF_ST_BIND(i32) #1

declare dso_local i8* @elf_strptr(i32, i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
