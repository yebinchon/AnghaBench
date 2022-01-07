; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_config_bpf_program.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_config_bpf_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.bpf_program = type { i32 }
%struct.perf_probe_event = type { i32, i8* }
%struct.bpf_prog_priv = type { i32, i8*, i32, %struct.perf_probe_event }

@probe_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [38 x i8] c"bpf: unable to get title for program\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bpf: failed to alloc priv\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"bpf: config program '%s'\0A\00", align 1
@PERF_BPF_PROBE_GROUP = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"bpf: '%s': group for event is set and not '%s'.\0A\00", align 1
@BPF_LOADER_ERRNO__GROUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"bpf: strdup failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"bpf: '%s': event name is missing. Section name should be 'key=value'\0A\00", align 1
@BPF_LOADER_ERRNO__EVENTNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"bpf: config '%s' is ok\0A\00", align 1
@clear_prog_priv = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to set priv for program '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_program*)* @config_bpf_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_bpf_program(%struct.bpf_program* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_program*, align 8
  %4 = alloca %struct.perf_probe_event*, align 8
  %5 = alloca %struct.bpf_prog_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.bpf_program* %0, %struct.bpf_program** %3, align 8
  store %struct.perf_probe_event* null, %struct.perf_probe_event** %4, align 8
  store %struct.bpf_prog_priv* null, %struct.bpf_prog_priv** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @probe_conf, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @probe_conf, i32 0, i32 1), align 4
  %11 = load %struct.bpf_program*, %struct.bpf_program** %3, align 8
  %12 = call i8* @bpf_program__title(%struct.bpf_program* %11, i32 0)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @PTR_ERR(i8* %18)
  store i32 %19, i32* %2, align 4
  br label %134

20:                                               ; preds = %1
  %21 = call %struct.bpf_prog_priv* @calloc(i32 40, i32 1)
  store %struct.bpf_prog_priv* %21, %struct.bpf_prog_priv** %5, align 8
  %22 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %5, align 8
  %23 = icmp ne %struct.bpf_prog_priv* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %134

28:                                               ; preds = %20
  %29 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %5, align 8
  %30 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %29, i32 0, i32 3
  store %struct.perf_probe_event* %30, %struct.perf_probe_event** %4, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %35 = call i32 @parse_prog_config(i8* %33, i8** %7, i32* %8, %struct.perf_probe_event* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %124

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 58)
  store i8* %44, i8** %10, align 8
  %45 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %5, align 8
  %46 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @strndup(i8* %47, i32 %53)
  %55 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %5, align 8
  %56 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i8* @strdup(i8* %58)
  %60 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %5, align 8
  %61 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %113

62:                                               ; preds = %39
  %63 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %64 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %69 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** @PERF_BPF_PROBE_GROUP, align 8
  %72 = call i64 @strcmp(i8* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** @PERF_BPF_PROBE_GROUP, align 8
  %77 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %75, i8* %76)
  %78 = load i32, i32* @BPF_LOADER_ERRNO__GROUP, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %124

80:                                               ; preds = %67, %62
  %81 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %82 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** @PERF_BPF_PROBE_GROUP, align 8
  %87 = call i8* @strdup(i8* %86)
  %88 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %89 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %85, %80
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %93 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  br label %124

100:                                              ; preds = %91
  %101 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %102 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @BPF_LOADER_ERRNO__EVENTNAME, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %124

110:                                              ; preds = %100
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %110, %42
  %114 = load %struct.bpf_program*, %struct.bpf_program** %3, align 8
  %115 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %5, align 8
  %116 = load i32, i32* @clear_prog_priv, align 4
  %117 = call i32 @bpf_program__set_priv(%struct.bpf_program* %114, %struct.bpf_prog_priv* %115, i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %121)
  br label %124

123:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %134

124:                                              ; preds = %120, %105, %96, %74, %38
  %125 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %126 = icmp ne %struct.perf_probe_event* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %129 = call i32 @clear_perf_probe_event(%struct.perf_probe_event* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %5, align 8
  %132 = call i32 @free(%struct.bpf_prog_priv* %131)
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %123, %24, %16
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i8* @bpf_program__title(%struct.bpf_program*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.bpf_prog_priv* @calloc(i32, i32) #1

declare dso_local i32 @parse_prog_config(i8*, i8**, i32*, %struct.perf_probe_event*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strndup(i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bpf_program__set_priv(%struct.bpf_program*, %struct.bpf_prog_priv*, i32) #1

declare dso_local i32 @clear_perf_probe_event(%struct.perf_probe_event*) #1

declare dso_local i32 @free(%struct.bpf_prog_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
