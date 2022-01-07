; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_parse_server_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_parse_server_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_entity_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.ceph_entity_addr*, i8, i8**)* @ceph_parse_server_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_parse_server_name(i8* %0, i64 %1, %struct.ceph_entity_addr* %2, i8 signext %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ceph_entity_addr*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ceph_entity_addr* %2, %struct.ceph_entity_addr** %8, align 8
  store i8 %3, i8* %9, align 1
  store i8** %4, i8*** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %8, align 8
  %15 = load i8, i8* %9, align 1
  %16 = load i8**, i8*** %10, align 8
  %17 = call i32 @ceph_pton(i8* %12, i64 %13, %struct.ceph_entity_addr* %14, i8 signext %15, i8** %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %8, align 8
  %24 = load i8, i8* %9, align 1
  %25 = load i8**, i8*** %10, align 8
  %26 = call i32 @ceph_dns_resolve_name(i8* %21, i64 %22, %struct.ceph_entity_addr* %23, i8 signext %24, i8** %25)
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %20, %5
  %28 = load i32, i32* %11, align 4
  ret i32 %28
}

declare dso_local i32 @ceph_pton(i8*, i64, %struct.ceph_entity_addr*, i8 signext, i8**) #1

declare dso_local i32 @ceph_dns_resolve_name(i8*, i64, %struct.ceph_entity_addr*, i8 signext, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
