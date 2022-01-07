; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_encode_oloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_encode_oloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_object_locator = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, %struct.ceph_object_locator*)* @encode_oloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_oloc(i8** %0, i8* %1, %struct.ceph_object_locator* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ceph_object_locator*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ceph_object_locator* %2, %struct.ceph_object_locator** %6, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %6, align 8
  %9 = call i32 @ceph_oloc_encoding_size(%struct.ceph_object_locator* %8)
  %10 = call i32 @ceph_start_encoding(i8** %7, i32 5, i32 4, i32 %9)
  %11 = load i8**, i8*** %4, align 8
  %12 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %6, align 8
  %13 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ceph_encode_64(i8** %11, i32 %14)
  %16 = load i8**, i8*** %4, align 8
  %17 = call i32 @ceph_encode_32(i8** %16, i32 -1)
  %18 = load i8**, i8*** %4, align 8
  %19 = call i32 @ceph_encode_32(i8** %18, i32 0)
  %20 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %6, align 8
  %21 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %3
  %25 = load i8**, i8*** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %6, align 8
  %28 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %6, align 8
  %33 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ceph_encode_string(i8** %25, i8* %26, i32 %31, i32 %36)
  br label %41

38:                                               ; preds = %3
  %39 = load i8**, i8*** %4, align 8
  %40 = call i32 @ceph_encode_32(i8** %39, i32 0)
  br label %41

41:                                               ; preds = %38, %24
  ret void
}

declare dso_local i32 @ceph_start_encoding(i8**, i32, i32, i32) #1

declare dso_local i32 @ceph_oloc_encoding_size(%struct.ceph_object_locator*) #1

declare dso_local i32 @ceph_encode_64(i8**, i32) #1

declare dso_local i32 @ceph_encode_32(i8**, i32) #1

declare dso_local i32 @ceph_encode_string(i8**, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
