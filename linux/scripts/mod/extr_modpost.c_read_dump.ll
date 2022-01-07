; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_read_dump.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_read_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.symbol = type { i32, i32, i64 }

@have_vmlinux = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"parse error in symbol dump file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @read_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dump(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.module*, align 8
  %17 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @grab_file(i8* %18, i64* %5)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %130

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %99, %23
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i8* @get_next_line(i64* %6, i8* %25, i64 %26)
  store i8* %27, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %121

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 9)
  store i8* %31, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %125

34:                                               ; preds = %29
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  store i8 0, i8* %35, align 1
  %37 = load i8*, i8** %9, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 9)
  store i8* %38, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %125

41:                                               ; preds = %34
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  store i8 0, i8* %42, align 1
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 9)
  store i8* %45, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %125

48:                                               ; preds = %41
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  store i8 0, i8* %49, align 1
  %51 = load i8*, i8** %11, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 9)
  store i8* %52, i8** %13, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %13, align 8
  store i8 0, i8* %55, align 1
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i8*, i8** %13, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i8*, i8** %13, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 9)
  store i8* %62, i8** %14, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i8*, i8** %14, align 8
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %64, %60, %57
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @strtoul(i8* %67, i8** %12, i32 16)
  store i32 %68, i32* %15, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %66
  %74 = load i8*, i8** %11, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %12, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %73, %66
  br label %125

84:                                               ; preds = %78
  %85 = load i8*, i8** %11, align 8
  %86 = call %struct.module* @find_module(i8* %85)
  store %struct.module* %86, %struct.module** %16, align 8
  %87 = load %struct.module*, %struct.module** %16, align 8
  %88 = icmp ne %struct.module* %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %11, align 8
  %91 = call i64 @is_vmlinux(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 1, i32* @have_vmlinux, align 4
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i8*, i8** %11, align 8
  %96 = call %struct.module* @new_module(i8* %95)
  store %struct.module* %96, %struct.module** %16, align 8
  %97 = load %struct.module*, %struct.module** %16, align 8
  %98 = getelementptr inbounds %struct.module, %struct.module* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %84
  %100 = load i8*, i8** %9, align 8
  %101 = load %struct.module*, %struct.module** %16, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @export_no(i8* %102)
  %104 = call %struct.symbol* @sym_add_exported(i8* %100, %struct.module* %101, i32 %103)
  store %struct.symbol* %104, %struct.symbol** %17, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.symbol*, %struct.symbol** %17, align 8
  %107 = getelementptr inbounds %struct.symbol, %struct.symbol* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.symbol*, %struct.symbol** %17, align 8
  %109 = getelementptr inbounds %struct.symbol, %struct.symbol* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.symbol*, %struct.symbol** %17, align 8
  %111 = getelementptr inbounds %struct.symbol, %struct.symbol* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load %struct.module*, %struct.module** %16, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 @export_no(i8* %115)
  %117 = call i32 @sym_update_crc(i8* %112, %struct.module* %113, i32 %114, i32 %116)
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @sym_update_namespace(i8* %118, i8* %119)
  br label %24

121:                                              ; preds = %24
  %122 = load i8*, i8** %7, align 8
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @release_file(i8* %122, i64 %123)
  br label %130

125:                                              ; preds = %83, %47, %40, %33
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @release_file(i8* %126, i64 %127)
  %129 = call i32 @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %130

130:                                              ; preds = %125, %121, %22
  ret void
}

declare dso_local i8* @grab_file(i8*, i64*) #1

declare dso_local i8* @get_next_line(i64*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.module* @find_module(i8*) #1

declare dso_local i64 @is_vmlinux(i8*) #1

declare dso_local %struct.module* @new_module(i8*) #1

declare dso_local %struct.symbol* @sym_add_exported(i8*, %struct.module*, i32) #1

declare dso_local i32 @export_no(i8*) #1

declare dso_local i32 @sym_update_crc(i8*, %struct.module*, i32, i32) #1

declare dso_local i32 @sym_update_namespace(i8*, i8*) #1

declare dso_local i32 @release_file(i8*, i64) #1

declare dso_local i32 @fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
