; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_access_copy.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_access_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.accessdata_dn = type { i64, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.accessdata_dn*)* @dn_access_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_access_copy(%struct.sk_buff* %0, %struct.accessdata_dn* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.accessdata_dn*, align 8
  %5 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.accessdata_dn* %1, %struct.accessdata_dn** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %5, align 8
  %11 = load i8, i8* %9, align 1
  %12 = zext i8 %11 to i64
  %13 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %14 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %16 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %15, i32 0, i32 5
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %19 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @memcpy(i32* %16, i8* %17, i64 %20)
  %22 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %23 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 %24
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i64
  %31 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %32 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %34 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %33, i32 0, i32 4
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %37 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @memcpy(i32* %34, i8* %35, i64 %38)
  %40 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %41 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i64
  %49 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %50 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %52 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %51, i32 0, i32 3
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %55 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @memcpy(i32* %52, i8* %53, i64 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %60 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %63 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load %struct.accessdata_dn*, %struct.accessdata_dn** %4, align 8
  %67 = getelementptr inbounds %struct.accessdata_dn, %struct.accessdata_dn* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = add nsw i64 %69, 3
  %71 = call i32 @skb_pull(%struct.sk_buff* %58, i64 %70)
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
