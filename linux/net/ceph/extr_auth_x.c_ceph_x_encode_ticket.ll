; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_encode_ticket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_encode_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_x_ticket_handler = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@bad = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_x_ticket_handler*, i8**, i8*)* @ceph_x_encode_ticket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_x_encode_ticket(%struct.ceph_x_ticket_handler* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_x_ticket_handler*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ceph_x_ticket_handler* %0, %struct.ceph_x_ticket_handler** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @bad, align 4
  %13 = call i32 @ceph_decode_need(i8** %10, i8* %11, i32 5, i32 %12)
  %14 = load i8**, i8*** %6, align 8
  %15 = call i32 @ceph_encode_8(i8** %14, i32 1)
  %16 = load i8**, i8*** %6, align 8
  %17 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %5, align 8
  %18 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ceph_encode_64(i8** %16, i32 %19)
  %21 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %5, align 8
  %22 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %3
  %26 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %5, align 8
  %27 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  %32 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %5, align 8
  %33 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @bad, align 4
  %42 = call i32 @ceph_encode_32_safe(i8** %38, i8* %39, i32 %40, i32 %41)
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @bad, align 4
  %48 = call i32 @ceph_encode_copy_safe(i8** %43, i8* %44, i8* %45, i32 %46, i32 %47)
  br label %54

49:                                               ; preds = %3
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @bad, align 4
  %53 = call i32 @ceph_encode_32_safe(i8** %50, i8* %51, i32 0, i32 %52)
  br label %54

54:                                               ; preds = %49, %25
  store i32 0, i32* %4, align 4
  br label %58

55:                                               ; No predecessors!
  %56 = load i32, i32* @ERANGE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %54
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_encode_8(i8**, i32) #1

declare dso_local i32 @ceph_encode_64(i8**, i32) #1

declare dso_local i32 @ceph_encode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_encode_copy_safe(i8**, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
