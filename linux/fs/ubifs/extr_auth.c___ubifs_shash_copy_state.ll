; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c___ubifs_shash_copy_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c___ubifs_shash_copy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.shash_desc = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ubifs_shash_copy_state(%struct.ubifs_info* %0, %struct.shash_desc* %1, %struct.shash_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.shash_desc*, align 8
  %7 = alloca %struct.shash_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.shash_desc* %1, %struct.shash_desc** %6, align 8
  store %struct.shash_desc* %2, %struct.shash_desc** %7, align 8
  %10 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %11 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @crypto_shash_descsize(i32 %12)
  %14 = load i32, i32* @GFP_NOFS, align 4
  %15 = call i32* @kmalloc(i32 %13, i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %36

21:                                               ; preds = %3
  %22 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @crypto_shash_export(%struct.shash_desc* %22, i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.shash_desc*, %struct.shash_desc** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @crypto_shash_import(%struct.shash_desc* %29, i32* %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %18
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @crypto_shash_descsize(i32) #1

declare dso_local i32 @crypto_shash_export(%struct.shash_desc*, i32*) #1

declare dso_local i32 @crypto_shash_import(%struct.shash_desc*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
