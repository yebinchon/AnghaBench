; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_read_partial_banner.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_read_partial_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"read_partial_banner %p at %d\0A\00", align 1
@CEPH_BANNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*)* @read_partial_banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_partial_banner(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %6 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %7 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %6, i32 %9)
  %11 = load i32, i32* @CEPH_BANNER, align 4
  %12 = call i32 @strlen(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @read_partial(%struct.ceph_connection* %14, i32 %15, i32 %16, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %57

24:                                               ; preds = %1
  store i32 4, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %32 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %31, i32 0, i32 1
  %33 = call i32 @read_partial(%struct.ceph_connection* %28, i32 %29, i32 %30, i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %57

37:                                               ; preds = %24
  %38 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %39 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %38, i32 0, i32 1
  %40 = call i32 @ceph_decode_banner_addr(i32* %39)
  store i32 4, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %48 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %47, i32 0, i32 0
  %49 = call i32 @read_partial(%struct.ceph_connection* %44, i32 %45, i32 %46, i32* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %57

53:                                               ; preds = %37
  %54 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %55 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %54, i32 0, i32 0
  %56 = call i32 @ceph_decode_banner_addr(i32* %55)
  br label %57

57:                                               ; preds = %53, %52, %36, %23
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @dout(i8*, %struct.ceph_connection*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @read_partial(%struct.ceph_connection*, i32, i32, i32*) #1

declare dso_local i32 @ceph_decode_banner_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
