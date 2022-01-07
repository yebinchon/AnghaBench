; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_hpi_stream_host_buffer_detach.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_hpi_stream_host_buffer_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hpi_response = type { i32 }

@HPI_ERROR_INVALID_OBJ = common dso_local global i32 0, align 4
@HPI_OBJ_OSTREAM = common dso_local global i32 0, align 4
@HPI_OSTREAM_HOSTBUFFER_FREE = common dso_local global i32 0, align 4
@HPI_ISTREAM_HOSTBUFFER_FREE = common dso_local global i32 0, align 4
@HPI_BUFFER_CMD_INTERNAL_REVOKEADAPTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hpi_stream_host_buffer_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpi_stream_host_buffer_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpi_message, align 4
  %5 = alloca %struct.hpi_response, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @hpi_handle_object(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @HPI_ERROR_INVALID_OBJ, align 4
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @HPI_OBJ_OSTREAM, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @HPI_OSTREAM_HOSTBUFFER_FREE, align 4
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @HPI_ISTREAM_HOSTBUFFER_FREE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call i32 @hpi_init_message_response(%struct.hpi_message* %4, %struct.hpi_response* %5, i32 %14, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %4, i32 0, i32 2
  %27 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %4, i32 0, i32 1
  %28 = call i32 @hpi_handle_to_indexes(i32 %25, i32* %26, i32* %27)
  %29 = load i32, i32* @HPI_BUFFER_CMD_INTERNAL_REVOKEADAPTER, align 4
  %30 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %4, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  %35 = call i32 @hpi_send_recv(%struct.hpi_message* %4, %struct.hpi_response* %5)
  %36 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %22, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @hpi_handle_object(i32) #1

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i32 @hpi_handle_to_indexes(i32, i32*, i32*) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
