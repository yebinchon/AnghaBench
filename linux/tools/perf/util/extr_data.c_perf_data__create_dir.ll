; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_perf_data__create_dir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_perf_data__create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.perf_data_file*, i32 }
%struct.perf_data_file = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PERF_DIR_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s/data.%d\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_data__create_dir(%struct.perf_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_data_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_data_file*, align 8
  store %struct.perf_data* %0, %struct.perf_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.perf_data_file* null, %struct.perf_data_file** %6, align 8
  store i32 -1, i32* %8, align 4
  %10 = load %struct.perf_data*, %struct.perf_data** %4, align 8
  %11 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %92

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call %struct.perf_data_file* @zalloc(i32 %25)
  store %struct.perf_data_file* %26, %struct.perf_data_file** %6, align 8
  %27 = load %struct.perf_data_file*, %struct.perf_data_file** %6, align 8
  %28 = icmp ne %struct.perf_data_file* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %92

32:                                               ; preds = %21
  %33 = load i32, i32* @PERF_DIR_VERSION, align 4
  %34 = load %struct.perf_data*, %struct.perf_data** %4, align 8
  %35 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.perf_data_file*, %struct.perf_data_file** %6, align 8
  %38 = load %struct.perf_data*, %struct.perf_data** %4, align 8
  %39 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store %struct.perf_data_file* %37, %struct.perf_data_file** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.perf_data*, %struct.perf_data** %4, align 8
  %43 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %83, %32
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = load %struct.perf_data_file*, %struct.perf_data_file** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %50, i64 %52
  store %struct.perf_data_file* %53, %struct.perf_data_file** %9, align 8
  %54 = load %struct.perf_data_file*, %struct.perf_data_file** %9, align 8
  %55 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %54, i32 0, i32 1
  %56 = load %struct.perf_data*, %struct.perf_data** %4, align 8
  %57 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @asprintf(i32* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %87

63:                                               ; preds = %49
  %64 = load %struct.perf_data_file*, %struct.perf_data_file** %9, align 8
  %65 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @O_RDWR, align 4
  %68 = load i32, i32* @O_CREAT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @O_TRUNC, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @S_IRUSR, align 4
  %73 = load i32, i32* @S_IWUSR, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @open(i32 %66, i32 %71, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %87

79:                                               ; preds = %63
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.perf_data_file*, %struct.perf_data_file** %9, align 8
  %82 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %45

86:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %92

87:                                               ; preds = %78, %62
  %88 = load %struct.perf_data_file*, %struct.perf_data_file** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @close_dir(%struct.perf_data_file* %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %86, %29, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.perf_data_file* @zalloc(i32) #1

declare dso_local i64 @asprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @close_dir(%struct.perf_data_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
