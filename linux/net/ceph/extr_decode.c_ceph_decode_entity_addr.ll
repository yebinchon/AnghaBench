; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_decode.c_ceph_decode_entity_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_decode.c_ceph_decode_entity_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_entity_addr = type { i32 }

@bad = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_decode_entity_addr(i8** %0, i8* %1, %struct.ceph_entity_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ceph_entity_addr*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ceph_entity_addr* %2, %struct.ceph_entity_addr** %7, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @bad, align 4
  %13 = call i32 @ceph_decode_8_safe(i8** %9, i8* %10, i32 %11, i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %7, align 8
  %20 = call i32 @ceph_decode_entity_addr_versioned(i8** %17, i8* %18, %struct.ceph_entity_addr* %19)
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %7, align 8
  %28 = call i32 @ceph_decode_entity_addr_legacy(i8** %25, i8* %26, %struct.ceph_entity_addr* %27)
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %24, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @ceph_decode_8_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_entity_addr_versioned(i8**, i8*, %struct.ceph_entity_addr*) #1

declare dso_local i32 @ceph_decode_entity_addr_legacy(i8**, i8*, %struct.ceph_entity_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
