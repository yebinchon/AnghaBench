; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_hash_dat.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_hash_dat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_dat_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @batadv_hash_dat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_hash_dat(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.batadv_dat_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.batadv_dat_entry*
  store %struct.batadv_dat_entry* %10, %struct.batadv_dat_entry** %6, align 8
  %11 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %6, align 8
  %12 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %11, i32 0, i32 1
  %13 = bitcast i32* %12 to i8*
  store i8* %13, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %35, %2
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 10
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 6
  %33 = load i32, i32* %5, align 4
  %34 = xor i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %6, align 8
  %40 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %39, i32 0, i32 0
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %63, %38
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 4
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = shl i32 %55, 10
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = ashr i32 %59, 6
  %61 = load i32, i32* %5, align 4
  %62 = xor i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %46
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %42

66:                                               ; preds = %42
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 %67, 3
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = ashr i32 %71, 11
  %73 = load i32, i32* %5, align 4
  %74 = xor i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = shl i32 %75, 15
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %4, align 4
  %81 = srem i32 %79, %80
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
