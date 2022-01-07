; ModuleID = '/home/carl/AnghaBench/linux/security/extr_security.c_security_inode_init_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_security.c_security_inode_init_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.xattr = type { i32*, i32, i32 }

@MAX_LSM_EVM_XATTR = common dso_local global i32 0, align 4
@inode_init_security = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_inode_init_security(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2, i32 (%struct.inode*, %struct.xattr*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i32 (%struct.inode*, %struct.xattr*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.xattr*, align 8
  %15 = alloca %struct.xattr*, align 8
  %16 = alloca %struct.xattr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store i32 (%struct.inode*, %struct.xattr*, i8*)* %3, i32 (%struct.inode*, %struct.xattr*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load i32, i32* @MAX_LSM_EVM_XATTR, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.xattr, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i32 @IS_PRIVATE(%struct.inode* %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %99

29:                                               ; preds = %5
  %30 = load i32 (%struct.inode*, %struct.xattr*, i8*)*, i32 (%struct.inode*, %struct.xattr*, i8*)** %10, align 8
  %31 = icmp ne i32 (%struct.inode*, %struct.xattr*, i8*)* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @inode_init_security, align 4
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = load %struct.qstr*, %struct.qstr** %9, align 8
  %39 = call i32 @call_int_hook(i32 %33, i32 %35, %struct.inode* %36, %struct.inode* %37, %struct.qstr* %38, i32* null, i32** null, i32* null)
  store i32 %39, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %99

40:                                               ; preds = %29
  %41 = mul nuw i64 16, %21
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(%struct.xattr* %23, i32 0, i32 %42)
  store %struct.xattr* %23, %struct.xattr** %14, align 8
  %44 = load i32, i32* @inode_init_security, align 4
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = load %struct.qstr*, %struct.qstr** %9, align 8
  %50 = load %struct.xattr*, %struct.xattr** %14, align 8
  %51 = getelementptr inbounds %struct.xattr, %struct.xattr* %50, i32 0, i32 2
  %52 = load %struct.xattr*, %struct.xattr** %14, align 8
  %53 = getelementptr inbounds %struct.xattr, %struct.xattr* %52, i32 0, i32 0
  %54 = load %struct.xattr*, %struct.xattr** %14, align 8
  %55 = getelementptr inbounds %struct.xattr, %struct.xattr* %54, i32 0, i32 1
  %56 = call i32 @call_int_hook(i32 %44, i32 %46, %struct.inode* %47, %struct.inode* %48, %struct.qstr* %49, i32* %51, i32** %53, i32* %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  br label %75

60:                                               ; preds = %40
  %61 = load %struct.xattr*, %struct.xattr** %14, align 8
  %62 = getelementptr inbounds %struct.xattr, %struct.xattr* %61, i64 1
  store %struct.xattr* %62, %struct.xattr** %15, align 8
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = load %struct.xattr*, %struct.xattr** %14, align 8
  %65 = load %struct.xattr*, %struct.xattr** %15, align 8
  %66 = call i32 @evm_inode_init_security(%struct.inode* %63, %struct.xattr* %64, %struct.xattr* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %75

70:                                               ; preds = %60
  %71 = load i32 (%struct.inode*, %struct.xattr*, i8*)*, i32 (%struct.inode*, %struct.xattr*, i8*)** %10, align 8
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 %71(%struct.inode* %72, %struct.xattr* %23, i8* %73)
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %70, %69, %59
  store %struct.xattr* %23, %struct.xattr** %16, align 8
  br label %76

76:                                               ; preds = %86, %75
  %77 = load %struct.xattr*, %struct.xattr** %16, align 8
  %78 = getelementptr inbounds %struct.xattr, %struct.xattr* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.xattr*, %struct.xattr** %16, align 8
  %83 = getelementptr inbounds %struct.xattr, %struct.xattr* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @kfree(i32* %84)
  br label %86

86:                                               ; preds = %81
  %87 = load %struct.xattr*, %struct.xattr** %16, align 8
  %88 = getelementptr inbounds %struct.xattr, %struct.xattr* %87, i32 1
  store %struct.xattr* %88, %struct.xattr** %16, align 8
  br label %76

89:                                               ; preds = %76
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @EOPNOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %17, align 4
  br label %97

97:                                               ; preds = %95, %94
  %98 = phi i32 [ 0, %94 ], [ %96, %95 ]
  store i32 %98, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %99

99:                                               ; preds = %97, %32, %28
  %100 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @IS_PRIVATE(%struct.inode*) #2

declare dso_local i32 @call_int_hook(i32, i32, %struct.inode*, %struct.inode*, %struct.qstr*, i32*, i32**, i32*) #2

declare dso_local i32 @memset(%struct.xattr*, i32, i32) #2

declare dso_local i32 @evm_inode_init_security(%struct.inode*, %struct.xattr*, %struct.xattr*) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
