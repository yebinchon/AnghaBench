; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_verify_hello.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_verify_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i8*, i32, i32 }

@CEPH_BANNER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"connect to %s got bad banner\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"protocol error, bad banner\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*)* @verify_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_hello(%struct.ceph_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_connection*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  %4 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %5 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CEPH_BANNER, align 4
  %8 = load i32, i32* @CEPH_BANNER, align 4
  %9 = call i32 @strlen(i32 %8)
  %10 = call i64 @memcmp(i32 %6, i32 %7, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %13, i32 0, i32 1
  %15 = call i32 @ceph_pr_addr(i32* %14)
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %18 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  store i32 -1, i32* %2, align 4
  br label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ceph_pr_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
