; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_instream_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_instream_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }
%struct.hpi_message = type { i64, i64 }
%struct.hpi_response = type { i64 }

@HPI_OBJ_ISTREAM = common dso_local global i32 0, align 4
@HPI_ISTREAM_CLOSE = common dso_local global i32 0, align 4
@msgx_lock = common dso_local global i32 0, align 4
@instream_user_open = common dso_local global %struct.TYPE_2__** null, align 8
@HPI_ISTREAM_RESET = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%p trying to close %d instream %d owned by %p\0A\00", align 1
@HPI_ERROR_OBJ_NOT_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_message*, %struct.hpi_response*, i8*)* @instream_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instream_close(%struct.hpi_message* %0, %struct.hpi_response* %1, i8* %2) #0 {
  %4 = alloca %struct.hpi_message*, align 8
  %5 = alloca %struct.hpi_response*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hpi_message, align 8
  %8 = alloca %struct.hpi_response, align 8
  store %struct.hpi_message* %0, %struct.hpi_message** %4, align 8
  store %struct.hpi_response* %1, %struct.hpi_response** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %10 = load i32, i32* @HPI_OBJ_ISTREAM, align 4
  %11 = load i32, i32* @HPI_ISTREAM_CLOSE, align 4
  %12 = call i32 @hpi_init_response(%struct.hpi_response* %9, i32 %10, i32 %11, i32 0)
  %13 = call i32 @hpios_msgxlock_lock(i32* @msgx_lock)
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @instream_user_open, align 8
  %16 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %17 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %22 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %14, %26
  br i1 %27, label %28, label %98

28:                                               ; preds = %3
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @instream_user_open, align 8
  %30 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %31 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %36 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* null, i8** %39, align 8
  %40 = call i32 @hpios_msgxlock_unlock(i32* @msgx_lock)
  %41 = load i32, i32* @HPI_OBJ_ISTREAM, align 4
  %42 = load i32, i32* @HPI_ISTREAM_RESET, align 4
  %43 = call i32 @hpi_init_message_response(%struct.hpi_message* %7, %struct.hpi_response* %8, i32 %41, i32 %42)
  %44 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %45 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %49 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = call i32 @hw_entry_point(%struct.hpi_message* %7, %struct.hpi_response* %8)
  %53 = call i32 @hpios_msgxlock_lock(i32* @msgx_lock)
  %54 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %28
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @instream_user_open, align 8
  %60 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %61 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %66 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i8* %58, i8** %69, align 8
  %70 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %73 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %97

74:                                               ; preds = %28
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @instream_user_open, align 8
  %76 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %77 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %82 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @instream_user_open, align 8
  %87 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %88 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %86, i64 %89
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %93 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i8* null, i8** %96, align 8
  br label %97

97:                                               ; preds = %74, %57
  br label %123

98:                                               ; preds = %3
  %99 = load i32, i32* @WARNING, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %102 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %105 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @instream_user_open, align 8
  %108 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %109 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %107, i64 %110
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %114 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @HPI_DEBUG_LOG(i32 %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %100, i64 %103, i64 %106, i8* %118)
  %120 = load i64, i64* @HPI_ERROR_OBJ_NOT_OPEN, align 8
  %121 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %122 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %98, %97
  %124 = call i32 @hpios_msgxlock_unlock(i32* @msgx_lock)
  ret void
}

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i32, i32) #1

declare dso_local i32 @hpios_msgxlock_lock(i32*) #1

declare dso_local i32 @hpios_msgxlock_unlock(i32*) #1

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i32 @hw_entry_point(%struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i8*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
