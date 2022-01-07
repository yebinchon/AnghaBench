; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_objname_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_objname_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_object_hash_key = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @nft_objname_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_objname_hash(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nft_object_hash_key*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.nft_object_hash_key*
  store %struct.nft_object_hash_key* %9, %struct.nft_object_hash_key** %7, align 8
  %10 = load %struct.nft_object_hash_key*, %struct.nft_object_hash_key** %7, align 8
  %11 = getelementptr inbounds %struct.nft_object_hash_key, %struct.nft_object_hash_key* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hash_ptr(i32 %12, i32 32)
  %14 = load i32, i32* %6, align 4
  %15 = xor i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load %struct.nft_object_hash_key*, %struct.nft_object_hash_key** %7, align 8
  %17 = getelementptr inbounds %struct.nft_object_hash_key, %struct.nft_object_hash_key* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nft_object_hash_key*, %struct.nft_object_hash_key** %7, align 8
  %20 = getelementptr inbounds %struct.nft_object_hash_key, %struct.nft_object_hash_key* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strlen(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @jhash(i32 %18, i32 %22, i32 %23)
  ret i32 %24
}

declare dso_local i32 @hash_ptr(i32, i32) #1

declare dso_local i32 @jhash(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
