; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_stream__create.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_stream__create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_stream = type { i32, %struct.bt_ctf_stream* }
%struct.bt_ctf_stream = type { i32 }
%struct.ctf_writer = type { i32, i32 }
%struct.bt_ctf_field = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate ctf stream\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to create CTF stream\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to obtain packet context\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cpu_id\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to obtain cpu field\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to update CPU number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctf_stream* (%struct.ctf_writer*, i32)* @ctf_stream__create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctf_stream* @ctf_stream__create(%struct.ctf_writer* %0, i32 %1) #0 {
  %3 = alloca %struct.ctf_stream*, align 8
  %4 = alloca %struct.ctf_writer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctf_stream*, align 8
  %7 = alloca %struct.bt_ctf_field*, align 8
  %8 = alloca %struct.bt_ctf_field*, align 8
  %9 = alloca %struct.bt_ctf_stream*, align 8
  %10 = alloca i32, align 4
  store %struct.ctf_writer* %0, %struct.ctf_writer** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bt_ctf_field* null, %struct.bt_ctf_field** %7, align 8
  store %struct.bt_ctf_field* null, %struct.bt_ctf_field** %8, align 8
  store %struct.bt_ctf_stream* null, %struct.bt_ctf_stream** %9, align 8
  %11 = call %struct.ctf_stream* @zalloc(i32 16)
  store %struct.ctf_stream* %11, %struct.ctf_stream** %6, align 8
  %12 = load %struct.ctf_stream*, %struct.ctf_stream** %6, align 8
  %13 = icmp ne %struct.ctf_stream* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.ctf_stream* null, %struct.ctf_stream** %3, align 8
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %18 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %21 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.bt_ctf_stream* @bt_ctf_writer_create_stream(i32 %19, i32 %22)
  store %struct.bt_ctf_stream* %23, %struct.bt_ctf_stream** %9, align 8
  %24 = load %struct.bt_ctf_stream*, %struct.bt_ctf_stream** %9, align 8
  %25 = icmp ne %struct.bt_ctf_stream* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %16
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %62

28:                                               ; preds = %16
  %29 = load %struct.bt_ctf_stream*, %struct.bt_ctf_stream** %9, align 8
  %30 = call %struct.bt_ctf_field* @bt_ctf_stream_get_packet_context(%struct.bt_ctf_stream* %29)
  store %struct.bt_ctf_field* %30, %struct.bt_ctf_field** %7, align 8
  %31 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %7, align 8
  %32 = icmp ne %struct.bt_ctf_field* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %62

35:                                               ; preds = %28
  %36 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %7, align 8
  %37 = call %struct.bt_ctf_field* @bt_ctf_field_structure_get_field(%struct.bt_ctf_field* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.bt_ctf_field* %37, %struct.bt_ctf_field** %8, align 8
  %38 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %7, align 8
  %39 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %38)
  %40 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %8, align 8
  %41 = icmp ne %struct.bt_ctf_field* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %62

44:                                               ; preds = %35
  %45 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %8, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @bt_ctf_field_unsigned_integer_set_value(%struct.bt_ctf_field* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %62

52:                                               ; preds = %44
  %53 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %8, align 8
  %54 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ctf_stream*, %struct.ctf_stream** %6, align 8
  %57 = getelementptr inbounds %struct.ctf_stream, %struct.ctf_stream* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.bt_ctf_stream*, %struct.bt_ctf_stream** %9, align 8
  %59 = load %struct.ctf_stream*, %struct.ctf_stream** %6, align 8
  %60 = getelementptr inbounds %struct.ctf_stream, %struct.ctf_stream* %59, i32 0, i32 1
  store %struct.bt_ctf_stream* %58, %struct.bt_ctf_stream** %60, align 8
  %61 = load %struct.ctf_stream*, %struct.ctf_stream** %6, align 8
  store %struct.ctf_stream* %61, %struct.ctf_stream** %3, align 8
  br label %77

62:                                               ; preds = %50, %42, %33, %26
  %63 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %8, align 8
  %64 = icmp ne %struct.bt_ctf_field* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %8, align 8
  %67 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.bt_ctf_stream*, %struct.bt_ctf_stream** %9, align 8
  %70 = icmp ne %struct.bt_ctf_stream* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.bt_ctf_stream*, %struct.bt_ctf_stream** %9, align 8
  %73 = call i32 @bt_ctf_stream_put(%struct.bt_ctf_stream* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.ctf_stream*, %struct.ctf_stream** %6, align 8
  %76 = call i32 @free(%struct.ctf_stream* %75)
  store %struct.ctf_stream* null, %struct.ctf_stream** %3, align 8
  br label %77

77:                                               ; preds = %74, %52, %14
  %78 = load %struct.ctf_stream*, %struct.ctf_stream** %3, align 8
  ret %struct.ctf_stream* %78
}

declare dso_local %struct.ctf_stream* @zalloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.bt_ctf_stream* @bt_ctf_writer_create_stream(i32, i32) #1

declare dso_local %struct.bt_ctf_field* @bt_ctf_stream_get_packet_context(%struct.bt_ctf_stream*) #1

declare dso_local %struct.bt_ctf_field* @bt_ctf_field_structure_get_field(%struct.bt_ctf_field*, i8*) #1

declare dso_local i32 @bt_ctf_field_put(%struct.bt_ctf_field*) #1

declare dso_local i32 @bt_ctf_field_unsigned_integer_set_value(%struct.bt_ctf_field*, i32) #1

declare dso_local i32 @bt_ctf_stream_put(%struct.bt_ctf_stream*) #1

declare dso_local i32 @free(%struct.ctf_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
