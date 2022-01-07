; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_read_partial.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_read_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*, i32, i32, i8*)* @read_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_partial(%struct.ceph_connection* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_connection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  br label %13

13:                                               ; preds = %41, %4
  %14 = load %struct.ceph_connection*, %struct.ceph_connection** %6, align 8
  %15 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ceph_connection*, %struct.ceph_connection** %6, align 8
  %22 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ceph_connection*, %struct.ceph_connection** %6, align 8
  %29 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ceph_tcp_recvmsg(i32 %30, i8* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %48

41:                                               ; preds = %19
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.ceph_connection*, %struct.ceph_connection** %6, align 8
  %44 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %13

47:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @ceph_tcp_recvmsg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
