; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_create_backoff_message.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_create_backoff_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ceph_osd_backoff = type { i32, i32, i32, i32 }

@CEPH_ENCODING_START_BLK_LEN = common dso_local global i32 0, align 4
@CEPH_PGID_ENCODING_LEN = common dso_local global i32 0, align 4
@CEPH_MSG_OSD_BACKOFF = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@CEPH_OSD_BACKOFF_OP_ACK_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_msg* (%struct.ceph_osd_backoff*, i32)* @create_backoff_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_msg* @create_backoff_message(%struct.ceph_osd_backoff* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_msg*, align 8
  %4 = alloca %struct.ceph_osd_backoff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_msg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ceph_osd_backoff* %0, %struct.ceph_osd_backoff** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @CEPH_ENCODING_START_BLK_LEN, align 4
  %11 = load i32, i32* @CEPH_PGID_ENCODING_LEN, align 4
  %12 = add nsw i32 %10, %11
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %14, 13
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @CEPH_ENCODING_START_BLK_LEN, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.ceph_osd_backoff*, %struct.ceph_osd_backoff** %4, align 8
  %19 = getelementptr inbounds %struct.ceph_osd_backoff, %struct.ceph_osd_backoff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @hoid_encoding_size(i32 %20)
  %22 = add nsw i64 %17, %21
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @CEPH_ENCODING_START_BLK_LEN, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.ceph_osd_backoff*, %struct.ceph_osd_backoff** %4, align 8
  %30 = getelementptr inbounds %struct.ceph_osd_backoff, %struct.ceph_osd_backoff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @hoid_encoding_size(i32 %31)
  %33 = add nsw i64 %28, %32
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @CEPH_MSG_OSD_BACKOFF, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @GFP_NOIO, align 4
  %41 = call %struct.ceph_msg* @ceph_msg_new(i32 %38, i32 %39, i32 %40, i32 1)
  store %struct.ceph_msg* %41, %struct.ceph_msg** %6, align 8
  %42 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %43 = icmp ne %struct.ceph_msg* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %2
  store %struct.ceph_msg* null, %struct.ceph_msg** %3, align 8
  br label %107

45:                                               ; preds = %2
  %46 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %47 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %52 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %50, i64 %54
  store i8* %55, i8** %8, align 8
  %56 = load %struct.ceph_osd_backoff*, %struct.ceph_osd_backoff** %4, align 8
  %57 = getelementptr inbounds %struct.ceph_osd_backoff, %struct.ceph_osd_backoff* %56, i32 0, i32 3
  %58 = call i32 @encode_spgid(i8** %7, i32* %57)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ceph_encode_32(i8** %7, i32 %59)
  %61 = load i32, i32* @CEPH_OSD_BACKOFF_OP_ACK_BLOCK, align 4
  %62 = call i32 @ceph_encode_8(i8** %7, i32 %61)
  %63 = load %struct.ceph_osd_backoff*, %struct.ceph_osd_backoff** %4, align 8
  %64 = getelementptr inbounds %struct.ceph_osd_backoff, %struct.ceph_osd_backoff* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ceph_encode_64(i8** %7, i32 %65)
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.ceph_osd_backoff*, %struct.ceph_osd_backoff** %4, align 8
  %69 = getelementptr inbounds %struct.ceph_osd_backoff, %struct.ceph_osd_backoff* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @encode_hoid(i8** %7, i8* %67, i32 %70)
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.ceph_osd_backoff*, %struct.ceph_osd_backoff** %4, align 8
  %74 = getelementptr inbounds %struct.ceph_osd_backoff, %struct.ceph_osd_backoff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @encode_hoid(i8** %7, i8* %72, i32 %75)
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = icmp ne i8* %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %84 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = ptrtoint i8* %82 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %92 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  %94 = call i32 @cpu_to_le16(i32 1)
  %95 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %96 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %99 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @cpu_to_le32(i32 %101)
  %103 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %104 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  store %struct.ceph_msg* %106, %struct.ceph_msg** %3, align 8
  br label %107

107:                                              ; preds = %45, %44
  %108 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  ret %struct.ceph_msg* %108
}

declare dso_local i64 @hoid_encoding_size(i32) #1

declare dso_local %struct.ceph_msg* @ceph_msg_new(i32, i32, i32, i32) #1

declare dso_local i32 @encode_spgid(i8**, i32*) #1

declare dso_local i32 @ceph_encode_32(i8**, i32) #1

declare dso_local i32 @ceph_encode_8(i8**, i32) #1

declare dso_local i32 @ceph_encode_64(i8**, i32) #1

declare dso_local i32 @encode_hoid(i8**, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
