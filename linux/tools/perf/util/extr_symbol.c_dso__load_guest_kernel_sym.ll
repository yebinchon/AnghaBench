; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load_guest_kernel_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load_guest_kernel_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32* }
%struct.dso = type { i32 }
%struct.map = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.machine* }
%struct.machine = type { i8*, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Guest kernel map hasn't the point to groups\0A\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%s/proc/kallsyms\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Using %s for symbols\0A\00", align 1
@DSO_BINARY_TYPE__GUEST_KALLSYMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.map*)* @dso__load_guest_kernel_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__load_guest_kernel_sym(%struct.dso* %0, %struct.map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dso*, align 8
  %5 = alloca %struct.map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %4, align 8
  store %struct.map* %1, %struct.map** %5, align 8
  store i8* null, i8** %7, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.map*, %struct.map** %5, align 8
  %17 = getelementptr inbounds %struct.map, %struct.map* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %83

22:                                               ; preds = %2
  %23 = load %struct.map*, %struct.map** %5, align 8
  %24 = getelementptr inbounds %struct.map, %struct.map* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.machine*, %struct.machine** %26, align 8
  store %struct.machine* %27, %struct.machine** %8, align 8
  %28 = load %struct.machine*, %struct.machine** %8, align 8
  %29 = call i64 @machine__is_default_guest(%struct.machine* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 1), align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.dso*, %struct.dso** %4, align 8
  %36 = load %struct.map*, %struct.map** %5, align 8
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 1), align 8
  %38 = call i32 @dso__load_vmlinux(%struct.dso* %35, %struct.map* %36, i32* %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %83

40:                                               ; preds = %31
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 8
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %83

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %22
  %47 = load %struct.machine*, %struct.machine** %8, align 8
  %48 = getelementptr inbounds %struct.machine, %struct.machine* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  store i8* %15, i8** %7, align 8
  br label %51

51:                                               ; preds = %46, %45
  %52 = load %struct.dso*, %struct.dso** %4, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.map*, %struct.map** %5, align 8
  %55 = call i32 @dso__load_kallsyms(%struct.dso* %52, i8* %53, %struct.map* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %struct.dso*, %struct.dso** %4, align 8
  %66 = call i32 @dso__is_kcore(%struct.dso* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @DSO_BINARY_TYPE__GUEST_KALLSYMS, align 4
  %70 = load %struct.dso*, %struct.dso** %4, align 8
  %71 = getelementptr inbounds %struct.dso, %struct.dso* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.dso*, %struct.dso** %4, align 8
  %73 = load %struct.machine*, %struct.machine** %8, align 8
  %74 = getelementptr inbounds %struct.machine, %struct.machine* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dso__set_long_name(%struct.dso* %72, i32 %75, i32 0)
  %77 = load %struct.map*, %struct.map** %5, align 8
  %78 = call i32 @map__fixup_start(%struct.map* %77)
  %79 = load %struct.map*, %struct.map** %5, align 8
  %80 = call i32 @map__fixup_end(%struct.map* %79)
  br label %81

81:                                               ; preds = %68, %64, %61
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %81, %44, %34, %20
  %84 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i64 @machine__is_default_guest(%struct.machine*) #2

declare dso_local i32 @dso__load_vmlinux(%struct.dso*, %struct.map*, i32*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @dso__load_kallsyms(%struct.dso*, i8*, %struct.map*) #2

declare dso_local i32 @dso__is_kcore(%struct.dso*) #2

declare dso_local i32 @dso__set_long_name(%struct.dso*, i32, i32) #2

declare dso_local i32 @map__fixup_start(%struct.map*) #2

declare dso_local i32 @map__fixup_end(%struct.map*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
