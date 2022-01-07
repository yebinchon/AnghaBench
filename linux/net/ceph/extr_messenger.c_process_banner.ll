; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_process_banner.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_process_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i8*, %struct.TYPE_13__*, %struct.TYPE_10__, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"process_banner on %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"wrong peer, want %s/%d, got %s/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"wrong peer at address\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"process_banner learned my addr is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*)* @process_banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_banner(%struct.ceph_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_connection*, align 8
  %4 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  %5 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %6 = call i32 @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %5)
  %7 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %8 = call i64 @verify_hello(%struct.ceph_connection* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %99

11:                                               ; preds = %1
  %12 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %12, i32 0, i32 4
  %14 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %15 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %14, i32 0, i32 3
  %16 = call i64 @memcmp(%struct.TYPE_12__* %13, %struct.TYPE_12__* %15, i32 16)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %11
  %19 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %20 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %19, i32 0, i32 3
  %21 = call i64 @addr_is_blank(%struct.TYPE_12__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %25 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %29 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %55, label %33

33:                                               ; preds = %23, %18
  %34 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %35 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %34, i32 0, i32 4
  %36 = call %struct.ceph_connection* @ceph_pr_addr(%struct.TYPE_12__* %35)
  %37 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %38 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @le32_to_cpu(i64 %40)
  %42 = trunc i64 %41 to i32
  %43 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %44 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %43, i32 0, i32 3
  %45 = call %struct.ceph_connection* @ceph_pr_addr(%struct.TYPE_12__* %44)
  %46 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %47 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @le32_to_cpu(i64 %49)
  %51 = trunc i64 %50 to i32
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_connection* %36, i32 %42, %struct.ceph_connection* %45, i32 %51)
  %53 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %54 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %54, align 8
  store i32 -1, i32* %2, align 4
  br label %99

55:                                               ; preds = %23, %11
  %56 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %57 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %56, i32 0, i32 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = call i64 @addr_is_blank(%struct.TYPE_12__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %98

63:                                               ; preds = %55
  %64 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %65 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = call i32 @addr_port(%struct.TYPE_12__* %68)
  store i32 %69, i32* %4, align 4
  %70 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %71 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %70, i32 0, i32 1
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %77 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = call i32 @memcpy(i32* %75, i32* %78, i32 4)
  %80 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %81 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @addr_set_port(%struct.TYPE_12__* %84, i32 %85)
  %87 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %88 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %87, i32 0, i32 1
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = call i32 @encode_my_addr(%struct.TYPE_13__* %89)
  %91 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %92 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %91, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = call %struct.ceph_connection* @ceph_pr_addr(%struct.TYPE_12__* %95)
  %97 = call i32 @dout(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), %struct.ceph_connection* %96)
  br label %98

98:                                               ; preds = %63, %55
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %33, %10
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @dout(i8*, %struct.ceph_connection*) #1

declare dso_local i64 @verify_hello(%struct.ceph_connection*) #1

declare dso_local i64 @memcmp(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @addr_is_blank(%struct.TYPE_12__*) #1

declare dso_local i32 @pr_warn(i8*, %struct.ceph_connection*, i32, %struct.ceph_connection*, i32) #1

declare dso_local %struct.ceph_connection* @ceph_pr_addr(%struct.TYPE_12__*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @addr_port(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @addr_set_port(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @encode_my_addr(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
