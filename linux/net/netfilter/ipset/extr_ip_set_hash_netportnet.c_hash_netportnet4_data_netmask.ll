; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netportnet.c_hash_netportnet4_data_netmask.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netportnet.c_hash_netportnet4_data_netmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_netportnet4_elem = type { i8**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_netportnet4_elem*, i8*, i32)* @hash_netportnet4_data_netmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_netportnet4_data_netmask(%struct.hash_netportnet4_elem* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hash_netportnet4_elem*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.hash_netportnet4_elem* %0, %struct.hash_netportnet4_elem** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @ip_set_netmask(i8* %10)
  %12 = load %struct.hash_netportnet4_elem*, %struct.hash_netportnet4_elem** %4, align 8
  %13 = getelementptr inbounds %struct.hash_netportnet4_elem, %struct.hash_netportnet4_elem* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.hash_netportnet4_elem*, %struct.hash_netportnet4_elem** %4, align 8
  %20 = getelementptr inbounds %struct.hash_netportnet4_elem, %struct.hash_netportnet4_elem* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* %18, i8** %22, align 8
  br label %37

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @ip_set_netmask(i8* %24)
  %26 = load %struct.hash_netportnet4_elem*, %struct.hash_netportnet4_elem** %4, align 8
  %27 = getelementptr inbounds %struct.hash_netportnet4_elem, %struct.hash_netportnet4_elem* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %25
  store i32 %31, i32* %29, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.hash_netportnet4_elem*, %struct.hash_netportnet4_elem** %4, align 8
  %34 = getelementptr inbounds %struct.hash_netportnet4_elem, %struct.hash_netportnet4_elem* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %32, i8** %36, align 8
  br label %37

37:                                               ; preds = %23, %9
  ret void
}

declare dso_local i32 @ip_set_netmask(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
