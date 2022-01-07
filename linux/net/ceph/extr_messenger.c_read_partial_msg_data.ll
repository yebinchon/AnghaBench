; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_read_partial_msg_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_read_partial_msg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i8*, i32, i32, %struct.ceph_msg* }
%struct.ceph_msg = type { i32, %struct.ceph_msg_data_cursor }
%struct.ceph_msg_data_cursor = type { i32, i64 }
%struct.page = type { i32 }

@NOCRC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*)* @read_partial_msg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_partial_msg_data(%struct.ceph_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_connection*, align 8
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca %struct.ceph_msg_data_cursor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  %12 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %12, i32 0, i32 3
  %14 = load %struct.ceph_msg*, %struct.ceph_msg** %13, align 8
  store %struct.ceph_msg* %14, %struct.ceph_msg** %4, align 8
  %15 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %15, i32 0, i32 1
  store %struct.ceph_msg_data_cursor* %16, %struct.ceph_msg_data_cursor** %5, align 8
  %17 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %18 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @from_msgr(i32 %19)
  %21 = load i32, i32* @NOCRC, align 4
  %22 = call i32 @ceph_test_opt(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  store i8* null, i8** %10, align 8
  %26 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %27 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %97

33:                                               ; preds = %1
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %38 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %36, %33
  br label %41

41:                                               ; preds = %84, %51, %40
  %42 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %5, align 8
  %43 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %41
  %47 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %5, align 8
  %48 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %5, align 8
  %53 = call i32 @ceph_msg_data_advance(%struct.ceph_msg_data_cursor* %52, i64 0)
  br label %41

54:                                               ; preds = %46
  %55 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %5, align 8
  %56 = call %struct.page* @ceph_msg_data_next(%struct.ceph_msg_data_cursor* %55, i64* %8, i64* %9, i32* null)
  store %struct.page* %56, %struct.page** %7, align 8
  %57 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %58 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.page*, %struct.page** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @ceph_tcp_recvpage(i32 %59, %struct.page* %60, i64 %61, i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i8*, i8** %10, align 8
  %71 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %72 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %2, align 4
  br label %97

75:                                               ; preds = %54
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i8*, i8** %10, align 8
  %80 = load %struct.page*, %struct.page** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i8* @ceph_crc32c_page(i8* %79, %struct.page* %80, i64 %81, i32 %82)
  store i8* %83, i8** %10, align 8
  br label %84

84:                                               ; preds = %78, %75
  %85 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 @ceph_msg_data_advance(%struct.ceph_msg_data_cursor* %85, i64 %87)
  br label %41

89:                                               ; preds = %41
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %95 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %92, %89
  store i32 1, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %73, %30
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @ceph_test_opt(i32, i32) #1

declare dso_local i32 @from_msgr(i32) #1

declare dso_local i32 @ceph_msg_data_advance(%struct.ceph_msg_data_cursor*, i64) #1

declare dso_local %struct.page* @ceph_msg_data_next(%struct.ceph_msg_data_cursor*, i64*, i64*, i32*) #1

declare dso_local i32 @ceph_tcp_recvpage(i32, %struct.page*, i64, i64) #1

declare dso_local i8* @ceph_crc32c_page(i8*, %struct.page*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
