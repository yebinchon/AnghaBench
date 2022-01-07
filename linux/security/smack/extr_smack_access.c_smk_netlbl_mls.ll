; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_netlbl_mls.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_netlbl_mls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@NETLBL_SECATTR_MLS_CAT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smk_netlbl_mls(i32 %0, i8* %1, %struct.netlbl_lsm_secattr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.netlbl_lsm_secattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.netlbl_lsm_secattr* %2, %struct.netlbl_lsm_secattr** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @NETLBL_SECATTR_MLS_CAT, align 4
  %16 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %8, align 8
  %17 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %8, align 8
  %22 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %8, align 8
  %26 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  store i32 1, i32* %12, align 4
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %10, align 8
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %75, %4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %30
  store i8 -128, i8* %11, align 1
  br label %35

35:                                               ; preds = %67, %34
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %41, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %67

48:                                               ; preds = %39
  %49 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %8, align 8
  %50 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @GFP_NOFS, align 4
  %55 = call i32 @netlbl_catmap_setbit(i32** %52, i32 %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %8, align 8
  %60 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @netlbl_catmap_free(i32* %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %81

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i8, i8* %11, align 1
  %69 = zext i8 %68 to i32
  %70 = ashr i32 %69, 1
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %11, align 1
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %35

74:                                               ; preds = %35
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %10, align 8
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %30

80:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @netlbl_catmap_setbit(i32**, i32, i32) #1

declare dso_local i32 @netlbl_catmap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
