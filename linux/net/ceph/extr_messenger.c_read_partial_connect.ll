; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_read_partial_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_read_partial_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [31 x i8] c"read_partial_connect %p at %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"authorizer reply too big: %d > %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"read_partial_connect %p tag %d, con_seq = %u, g_seq = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*)* @read_partial_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_partial_connect(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %6 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %7 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, %struct.ceph_connection*, i32, ...) @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %6, i32 %9)
  store i32 24, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %15, i32 0, i32 0
  %17 = call i32 @read_partial(%struct.ceph_connection* %12, i32 %13, i32 %14, %struct.TYPE_4__* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %84

21:                                               ; preds = %1
  %22 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %23 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %66

26:                                               ; preds = %21
  %27 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %28 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %34 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %32, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %26
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %42 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %84

49:                                               ; preds = %26
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %57 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @read_partial(%struct.ceph_connection* %53, i32 %54, i32 %55, %struct.TYPE_4__* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  br label %84

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %21
  %67 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %68 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %69 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %74 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %79 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = call i32 (i8*, %struct.ceph_connection*, i32, ...) @dout(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), %struct.ceph_connection* %67, i32 %72, i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %66, %64, %39, %20
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @dout(i8*, %struct.ceph_connection*, i32, ...) #1

declare dso_local i32 @read_partial(%struct.ceph_connection*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
