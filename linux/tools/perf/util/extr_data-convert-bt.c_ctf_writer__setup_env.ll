; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_writer__setup_env.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_writer__setup_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { %struct.bt_ctf_writer* }
%struct.bt_ctf_writer = type { i32 }
%struct.perf_session = type { %struct.perf_header }
%struct.perf_header = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sysname\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Linux\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"tracer_name\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"perf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*, %struct.perf_session*)* @ctf_writer__setup_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctf_writer__setup_env(%struct.ctf_writer* %0, %struct.perf_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctf_writer*, align 8
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca %struct.perf_header*, align 8
  %7 = alloca %struct.bt_ctf_writer*, align 8
  store %struct.ctf_writer* %0, %struct.ctf_writer** %4, align 8
  store %struct.perf_session* %1, %struct.perf_session** %5, align 8
  %8 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %9 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %8, i32 0, i32 0
  store %struct.perf_header* %9, %struct.perf_header** %6, align 8
  %10 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %11 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %10, i32 0, i32 0
  %12 = load %struct.bt_ctf_writer*, %struct.bt_ctf_writer** %11, align 8
  store %struct.bt_ctf_writer* %12, %struct.bt_ctf_writer** %7, align 8
  br label %13

13:                                               ; preds = %2
  %14 = load %struct.bt_ctf_writer*, %struct.bt_ctf_writer** %7, align 8
  %15 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %16 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (%struct.bt_ctf_writer*, i8*, i8*, ...) bitcast (i32 (...)* @bt_ctf_writer_add_environment_field to i32 (%struct.bt_ctf_writer*, i8*, i8*, ...)*)(%struct.bt_ctf_writer* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %78

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.bt_ctf_writer*, %struct.bt_ctf_writer** %7, align 8
  %26 = call i32 (%struct.bt_ctf_writer*, i8*, i8*, ...) bitcast (i32 (...)* @bt_ctf_writer_add_environment_field to i32 (%struct.bt_ctf_writer*, i8*, i8*, ...)*)(%struct.bt_ctf_writer* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %78

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.bt_ctf_writer*, %struct.bt_ctf_writer** %7, align 8
  %33 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %34 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (%struct.bt_ctf_writer*, i8*, i8*, ...) bitcast (i32 (...)* @bt_ctf_writer_add_environment_field to i32 (%struct.bt_ctf_writer*, i8*, i8*, ...)*)(%struct.bt_ctf_writer* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %78

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.bt_ctf_writer*, %struct.bt_ctf_writer** %7, align 8
  %44 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %45 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (%struct.bt_ctf_writer*, i8*, i8*, ...) bitcast (i32 (...)* @bt_ctf_writer_add_environment_field to i32 (%struct.bt_ctf_writer*, i8*, i8*, ...)*)(%struct.bt_ctf_writer* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %78

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.bt_ctf_writer*, %struct.bt_ctf_writer** %7, align 8
  %55 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %56 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (%struct.bt_ctf_writer*, i8*, i8*, ...) bitcast (i32 (...)* @bt_ctf_writer_add_environment_field to i32 (%struct.bt_ctf_writer*, i8*, i8*, ...)*)(%struct.bt_ctf_writer* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %78

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.bt_ctf_writer*, %struct.bt_ctf_writer** %7, align 8
  %66 = call i32 (%struct.bt_ctf_writer*, i8*, i8*, ...) bitcast (i32 (...)* @bt_ctf_writer_add_environment_field to i32 (%struct.bt_ctf_writer*, i8*, i8*, ...)*)(%struct.bt_ctf_writer* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %78

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.bt_ctf_writer*, %struct.bt_ctf_writer** %7, align 8
  %73 = call i32 (%struct.bt_ctf_writer*, i8*, i8*, ...) bitcast (i32 (...)* @bt_ctf_writer_add_environment_field to i32 (%struct.bt_ctf_writer*, i8*, i8*, ...)*)(%struct.bt_ctf_writer* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %78

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %75, %68, %61, %50, %39, %28, %21
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @bt_ctf_writer_add_environment_field(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
