; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_name_dups.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_name_dups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i32 }
%struct.hashmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btf_dump*, %struct.hashmap*, i8*)* @btf_dump_name_dups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btf_dump_name_dups(%struct.btf_dump* %0, %struct.hashmap* %1, i8* %2) #0 {
  %4 = alloca %struct.btf_dump*, align 8
  %5 = alloca %struct.hashmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.btf_dump* %0, %struct.btf_dump** %4, align 8
  store %struct.hashmap* %1, %struct.hashmap** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i64* %7 to i8**
  %11 = call i32 @hashmap__find(%struct.hashmap* %8, i8* %9, i8** %10)
  %12 = load i64, i64* %7, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %7, align 8
  %14 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @hashmap__set(%struct.hashmap* %14, i8* %15, i8* %17, i32* null, i32* null)
  %19 = load i64, i64* %7, align 8
  ret i64 %19
}

declare dso_local i32 @hashmap__find(%struct.hashmap*, i8*, i8**) #1

declare dso_local i32 @hashmap__set(%struct.hashmap*, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
