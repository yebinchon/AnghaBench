; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_send_add_streams.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_send_add_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i32, %struct.sctp_chunk*, %struct.TYPE_2__, %struct.sctp_stream }
%struct.sctp_chunk = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_stream = type { i64, i64 }
%struct.sctp_add_streams = type { i64, i64 }

@SCTP_ENABLE_CHANGE_ASSOC_REQ = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@SCTP_MAX_STREAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_send_add_streams(%struct.sctp_association* %0, %struct.sctp_add_streams* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_add_streams*, align 8
  %5 = alloca %struct.sctp_stream*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_add_streams* %1, %struct.sctp_add_streams** %4, align 8
  %12 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 4
  store %struct.sctp_stream* %13, %struct.sctp_stream** %5, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %6, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SCTP_ENABLE_CHANGE_ASSOC_REQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19, %2
  %27 = load i32, i32* @ENOPROTOOPT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %126

29:                                               ; preds = %19
  %30 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %31 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINPROGRESS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %126

37:                                               ; preds = %29
  %38 = load %struct.sctp_add_streams*, %struct.sctp_add_streams** %4, align 8
  %39 = getelementptr inbounds %struct.sctp_add_streams, %struct.sctp_add_streams* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load %struct.sctp_add_streams*, %struct.sctp_add_streams** %4, align 8
  %42 = getelementptr inbounds %struct.sctp_add_streams, %struct.sctp_add_streams* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %45 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %8, align 8
  %49 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %50 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %51, %52
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @SCTP_MAX_STREAM, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %37
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @SCTP_MAX_STREAM, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64, %57, %37
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %126

70:                                               ; preds = %64, %61
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i32 @sctp_stream_alloc_out(%struct.sctp_stream* %74, i64 %75, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %126

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %70
  %83 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call %struct.sctp_chunk* @sctp_make_strreset_addstrm(%struct.sctp_association* %83, i64 %84, i64 %85)
  store %struct.sctp_chunk* %86, %struct.sctp_chunk** %6, align 8
  %87 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %88 = icmp ne %struct.sctp_chunk* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %126

92:                                               ; preds = %82
  %93 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %94 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %95 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %94, i32 0, i32 2
  store %struct.sctp_chunk* %93, %struct.sctp_chunk** %95, align 8
  %96 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %97 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %96, i32 0, i32 2
  %98 = load %struct.sctp_chunk*, %struct.sctp_chunk** %97, align 8
  %99 = call i32 @sctp_chunk_hold(%struct.sctp_chunk* %98)
  %100 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %101 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %102 = call i32 @sctp_send_reconf(%struct.sctp_association* %100, %struct.sctp_chunk* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %92
  %106 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %107 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %106, i32 0, i32 2
  %108 = load %struct.sctp_chunk*, %struct.sctp_chunk** %107, align 8
  %109 = call i32 @sctp_chunk_put(%struct.sctp_chunk* %108)
  %110 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %111 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %110, i32 0, i32 2
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %111, align 8
  br label %126

112:                                              ; preds = %92
  %113 = load i64, i64* %10, align 8
  %114 = icmp ne i64 %113, 0
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = add nsw i32 %117, %122
  %124 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %125 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %112, %105, %89, %80, %67, %34, %26
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i32 @sctp_stream_alloc_out(%struct.sctp_stream*, i64, i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_strreset_addstrm(%struct.sctp_association*, i64, i64) #1

declare dso_local i32 @sctp_chunk_hold(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_send_reconf(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_chunk_put(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
