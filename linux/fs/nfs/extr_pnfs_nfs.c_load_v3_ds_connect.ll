; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_load_v3_ds_connect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_load_v3_ds_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_v3_ds_connect = common dso_local global i32* null, align 8
@nfs3_set_ds_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @load_v3_ds_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_v3_ds_connect() #0 {
  %1 = load i32*, i32** @get_v3_ds_connect, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @nfs3_set_ds_client, align 4
  %5 = call i32* @symbol_request(i32 %4)
  store i32* %5, i32** @get_v3_ds_connect, align 8
  %6 = load i32*, i32** @get_v3_ds_connect, align 8
  %7 = icmp ne i32* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON_ONCE(i32 %9)
  br label %11

11:                                               ; preds = %3, %0
  %12 = load i32*, i32** @get_v3_ds_connect, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32* @symbol_request(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
