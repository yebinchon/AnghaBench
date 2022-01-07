; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_HPIMSGX__cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_HPIMSGX__cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.hpi_message = type { i32, i8*, i8* }
%struct.hpi_response = type { i32 }

@HPIMSGX_ALLADAPTERS = common dso_local global i8* null, align 8
@HPI_MAX_ADAPTERS = common dso_local global i32 0, align 4
@HPI_MAX_STREAMS = common dso_local global i32 0, align 4
@outstream_user_open = common dso_local global %struct.TYPE_3__** null, align 8
@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Close adapter %d ostream %d\0A\00", align 1
@HPI_OBJ_OSTREAM = common dso_local global i32 0, align 4
@HPI_OSTREAM_RESET = common dso_local global i32 0, align 4
@HPI_OSTREAM_HOSTBUFFER_FREE = common dso_local global i32 0, align 4
@HPI_OSTREAM_GROUP_RESET = common dso_local global i32 0, align 4
@instream_user_open = common dso_local global %struct.TYPE_4__** null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Close adapter %d istream %d\0A\00", align 1
@HPI_OBJ_ISTREAM = common dso_local global i32 0, align 4
@HPI_ISTREAM_RESET = common dso_local global i32 0, align 4
@HPI_ISTREAM_HOSTBUFFER_FREE = common dso_local global i32 0, align 4
@HPI_ISTREAM_GROUP_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @HPIMSGX__cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HPIMSGX__cleanup(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpi_message, align 8
  %9 = alloca %struct.hpi_response, align 4
  %10 = alloca %struct.hpi_message, align 8
  %11 = alloca %struct.hpi_response, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %152

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** @HPIMSGX_ALLADAPTERS, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  %20 = load i32, i32* @HPI_MAX_ADAPTERS, align 4
  store i32 %20, i32* %7, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %19
  br label %27

27:                                               ; preds = %149, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %152

31:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %145, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @HPI_MAX_STREAMS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %148

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @outstream_user_open, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %38, i64 %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %37, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %36
  %50 = load i32, i32* @DEBUG, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @HPI_DEBUG_LOG(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @HPI_OBJ_OSTREAM, align 4
  %55 = load i32, i32* @HPI_OSTREAM_RESET, align 4
  %56 = call i32 @hpi_init_message_response(%struct.hpi_message* %8, %struct.hpi_response* %9, i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %8, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %8, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = call i32 @hw_entry_point(%struct.hpi_message* %8, %struct.hpi_response* %9)
  %66 = load i32, i32* @HPI_OSTREAM_HOSTBUFFER_FREE, align 4
  %67 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %8, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = call i32 @hw_entry_point(%struct.hpi_message* %8, %struct.hpi_response* %9)
  %69 = load i32, i32* @HPI_OSTREAM_GROUP_RESET, align 4
  %70 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %8, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = call i32 @hw_entry_point(%struct.hpi_message* %8, %struct.hpi_response* %9)
  %72 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @outstream_user_open, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %72, i64 %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @outstream_user_open, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %81, i64 %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i8* null, i8** %89, align 8
  br label %90

90:                                               ; preds = %49, %36
  %91 = load i8*, i8** %4, align 8
  %92 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @instream_user_open, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %92, i64 %94
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = icmp eq i8* %91, %101
  br i1 %102, label %103, label %144

103:                                              ; preds = %90
  %104 = load i32, i32* @DEBUG, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @HPI_DEBUG_LOG(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32, i32* @HPI_OBJ_ISTREAM, align 4
  %109 = load i32, i32* @HPI_ISTREAM_RESET, align 4
  %110 = call i32 @hpi_init_message_response(%struct.hpi_message* %10, %struct.hpi_response* %11, i32 %108, i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 2
  store i8* %113, i8** %114, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 1
  store i8* %117, i8** %118, align 8
  %119 = call i32 @hw_entry_point(%struct.hpi_message* %10, %struct.hpi_response* %11)
  %120 = load i32, i32* @HPI_ISTREAM_HOSTBUFFER_FREE, align 4
  %121 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 0
  store i32 %120, i32* %121, align 8
  %122 = call i32 @hw_entry_point(%struct.hpi_message* %10, %struct.hpi_response* %11)
  %123 = load i32, i32* @HPI_ISTREAM_GROUP_RESET, align 4
  %124 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = call i32 @hw_entry_point(%struct.hpi_message* %10, %struct.hpi_response* %11)
  %126 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @instream_user_open, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %126, i64 %128
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @instream_user_open, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %135, i64 %137
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i8* null, i8** %143, align 8
  br label %144

144:                                              ; preds = %103, %90
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %32

148:                                              ; preds = %32
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %27

152:                                              ; preds = %14, %27
  ret void
}

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i32, i32) #1

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i32 @hw_entry_point(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
