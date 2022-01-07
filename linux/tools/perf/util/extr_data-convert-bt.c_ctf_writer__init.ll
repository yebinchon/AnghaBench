; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_writer__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_writer__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { %struct.TYPE_2__, %struct.bt_ctf_stream_class*, %struct.bt_ctf_clock*, %struct.bt_ctf_writer* }
%struct.TYPE_2__ = type { i32 }
%struct.bt_ctf_stream_class = type { i32 }
%struct.bt_ctf_clock = type { i32 }
%struct.bt_ctf_writer = type { i32 }
%struct.bt_ctf_field_type = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"perf_clock\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to create CTF clock.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to setup CTF clock.\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"perf_stream\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to create CTF stream class.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to assign CTF clock to stream class.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"cpu_id\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to assign CTF clock to writer.\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to setup CTF writer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*, i8*)* @ctf_writer__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctf_writer__init(%struct.ctf_writer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctf_writer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bt_ctf_writer*, align 8
  %7 = alloca %struct.bt_ctf_stream_class*, align 8
  %8 = alloca %struct.bt_ctf_clock*, align 8
  %9 = alloca %struct.bt_ctf_field_type*, align 8
  %10 = alloca i32, align 4
  store %struct.ctf_writer* %0, %struct.ctf_writer** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.bt_ctf_writer* @bt_ctf_writer_create(i8* %11)
  store %struct.bt_ctf_writer* %12, %struct.bt_ctf_writer** %6, align 8
  %13 = load %struct.bt_ctf_writer*, %struct.bt_ctf_writer** %6, align 8
  %14 = icmp ne %struct.bt_ctf_writer* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %84

16:                                               ; preds = %2
  %17 = load %struct.bt_ctf_writer*, %struct.bt_ctf_writer** %6, align 8
  %18 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %19 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %18, i32 0, i32 3
  store %struct.bt_ctf_writer* %17, %struct.bt_ctf_writer** %19, align 8
  %20 = call %struct.bt_ctf_clock* @bt_ctf_clock_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.bt_ctf_clock* %20, %struct.bt_ctf_clock** %8, align 8
  %21 = load %struct.bt_ctf_clock*, %struct.bt_ctf_clock** %8, align 8
  %22 = icmp ne %struct.bt_ctf_clock* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 @pr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %81

25:                                               ; preds = %16
  %26 = load %struct.bt_ctf_clock*, %struct.bt_ctf_clock** %8, align 8
  %27 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %28 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %27, i32 0, i32 2
  store %struct.bt_ctf_clock* %26, %struct.bt_ctf_clock** %28, align 8
  %29 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %30 = call i64 @ctf_writer__setup_clock(%struct.ctf_writer* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @pr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %81

34:                                               ; preds = %25
  %35 = call %struct.bt_ctf_stream_class* @bt_ctf_stream_class_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store %struct.bt_ctf_stream_class* %35, %struct.bt_ctf_stream_class** %7, align 8
  %36 = load %struct.bt_ctf_stream_class*, %struct.bt_ctf_stream_class** %7, align 8
  %37 = icmp ne %struct.bt_ctf_stream_class* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call i32 @pr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %81

40:                                               ; preds = %34
  %41 = load %struct.bt_ctf_stream_class*, %struct.bt_ctf_stream_class** %7, align 8
  %42 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %43 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %42, i32 0, i32 1
  store %struct.bt_ctf_stream_class* %41, %struct.bt_ctf_stream_class** %43, align 8
  %44 = load %struct.bt_ctf_stream_class*, %struct.bt_ctf_stream_class** %7, align 8
  %45 = load %struct.bt_ctf_clock*, %struct.bt_ctf_clock** %8, align 8
  %46 = call i64 @bt_ctf_stream_class_set_clock(%struct.bt_ctf_stream_class* %44, %struct.bt_ctf_clock* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @pr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %81

50:                                               ; preds = %40
  %51 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %52 = call i64 @ctf_writer__init_data(%struct.ctf_writer* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %81

55:                                               ; preds = %50
  %56 = load %struct.bt_ctf_stream_class*, %struct.bt_ctf_stream_class** %7, align 8
  %57 = call %struct.bt_ctf_field_type* @bt_ctf_stream_class_get_packet_context_type(%struct.bt_ctf_stream_class* %56)
  store %struct.bt_ctf_field_type* %57, %struct.bt_ctf_field_type** %9, align 8
  %58 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %9, align 8
  %59 = icmp ne %struct.bt_ctf_field_type* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %81

61:                                               ; preds = %55
  %62 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %9, align 8
  %63 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %64 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bt_ctf_field_type_structure_add_field(%struct.bt_ctf_field_type* %62, i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 %67, i32* %10, align 4
  %68 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %9, align 8
  %69 = call i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type* %68)
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %81

73:                                               ; preds = %61
  %74 = load %struct.bt_ctf_writer*, %struct.bt_ctf_writer** %6, align 8
  %75 = load %struct.bt_ctf_clock*, %struct.bt_ctf_clock** %8, align 8
  %76 = call i64 @bt_ctf_writer_add_clock(%struct.bt_ctf_writer* %74, %struct.bt_ctf_clock* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @pr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %81

80:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %86

81:                                               ; preds = %78, %72, %60, %54, %48, %38, %32, %23
  %82 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %83 = call i32 @ctf_writer__cleanup(%struct.ctf_writer* %82)
  br label %84

84:                                               ; preds = %81, %15
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.bt_ctf_writer* @bt_ctf_writer_create(i8*) #1

declare dso_local %struct.bt_ctf_clock* @bt_ctf_clock_create(i8*) #1

declare dso_local i32 @pr(i8*) #1

declare dso_local i64 @ctf_writer__setup_clock(%struct.ctf_writer*) #1

declare dso_local %struct.bt_ctf_stream_class* @bt_ctf_stream_class_create(i8*) #1

declare dso_local i64 @bt_ctf_stream_class_set_clock(%struct.bt_ctf_stream_class*, %struct.bt_ctf_clock*) #1

declare dso_local i64 @ctf_writer__init_data(%struct.ctf_writer*) #1

declare dso_local %struct.bt_ctf_field_type* @bt_ctf_stream_class_get_packet_context_type(%struct.bt_ctf_stream_class*) #1

declare dso_local i32 @bt_ctf_field_type_structure_add_field(%struct.bt_ctf_field_type*, i32, i8*) #1

declare dso_local i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type*) #1

declare dso_local i64 @bt_ctf_writer_add_clock(%struct.bt_ctf_writer*, %struct.bt_ctf_clock*) #1

declare dso_local i32 @ctf_writer__cleanup(%struct.ctf_writer*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
