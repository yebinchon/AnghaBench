; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_ptr_to_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_ptr_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.assoc_array_ptr = type { i32 }

@KEYRING_PTR_SUBTYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key* (%struct.assoc_array_ptr*)* @keyring_ptr_to_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key* @keyring_ptr_to_key(%struct.assoc_array_ptr* %0) #0 {
  %2 = alloca %struct.assoc_array_ptr*, align 8
  %3 = alloca i8*, align 8
  store %struct.assoc_array_ptr* %0, %struct.assoc_array_ptr** %2, align 8
  %4 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %2, align 8
  %5 = call i8* @assoc_array_ptr_to_leaf(%struct.assoc_array_ptr* %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = load i64, i64* @KEYRING_PTR_SUBTYPE, align 8
  %9 = xor i64 %8, -1
  %10 = and i64 %7, %9
  %11 = inttoptr i64 %10 to %struct.key*
  ret %struct.key* %11
}

declare dso_local i8* @assoc_array_ptr_to_leaf(%struct.assoc_array_ptr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
