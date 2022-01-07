; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_prepare_auth_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_prepare_auth_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ubifs_info = type { i32 }
%struct.shash_desc = type { i32 }
%struct.ubifs_auth_node = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hash_desc = common dso_local global %struct.TYPE_7__* null, align 8
@UBIFS_AUTH_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_prepare_auth_node(%struct.ubifs_info* %0, i8* %1, %struct.shash_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.shash_desc*, align 8
  %8 = alloca %struct.ubifs_auth_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.shash_desc* %2, %struct.shash_desc** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.ubifs_auth_node*
  store %struct.ubifs_auth_node* %12, %struct.ubifs_auth_node** %8, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @crypto_shash_descsize(i32 %15)
  %17 = load i32, i32* @GFP_NOFS, align 4
  %18 = call i32* @kmalloc(i32 %16, i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %69

24:                                               ; preds = %3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hash_desc, align 8
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_7__* %25, i32 %28)
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hash_desc, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %36 = load %struct.shash_desc*, %struct.shash_desc** %7, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hash_desc, align 8
  %38 = call i32 @ubifs_shash_copy_state(%struct.ubifs_info* %35, %struct.shash_desc* %36, %struct.TYPE_7__* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hash_desc, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @crypto_shash_final(%struct.TYPE_7__* %39, i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  br label %65

45:                                               ; preds = %24
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.ubifs_auth_node*, %struct.ubifs_auth_node** %8, align 8
  %49 = getelementptr inbounds %struct.ubifs_auth_node, %struct.ubifs_auth_node* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ubifs_hash_calc_hmac(%struct.ubifs_info* %46, i32* %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %65

55:                                               ; preds = %45
  %56 = load i32, i32* @UBIFS_AUTH_NODE, align 4
  %57 = load %struct.ubifs_auth_node*, %struct.ubifs_auth_node** %8, align 8
  %58 = getelementptr inbounds %struct.ubifs_auth_node, %struct.ubifs_auth_node* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %61 = load %struct.ubifs_auth_node*, %struct.ubifs_auth_node** %8, align 8
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %63 = call i32 @ubifs_auth_node_sz(%struct.ubifs_info* %62)
  %64 = call i32 @ubifs_prepare_node(%struct.ubifs_info* %60, %struct.ubifs_auth_node* %61, i32 %63, i32 0)
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %55, %54, %44
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @kfree(i32* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %21
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @crypto_shash_descsize(i32) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ubifs_shash_copy_state(%struct.ubifs_info*, %struct.shash_desc*, %struct.TYPE_7__*) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ubifs_hash_calc_hmac(%struct.ubifs_info*, i32*, i32) #1

declare dso_local i32 @ubifs_prepare_node(%struct.ubifs_info*, %struct.ubifs_auth_node*, i32, i32) #1

declare dso_local i32 @ubifs_auth_node_sz(%struct.ubifs_info*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
