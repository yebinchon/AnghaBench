; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_cont_expand_zero.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_cont_expand_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32*)* @cont_expand_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cont_expand_zero(%struct.file* %0, %struct.address_space* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %20 = load %struct.address_space*, %struct.address_space** %6, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = call i32 @i_blocksize(%struct.inode* %23)
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %19, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = lshr i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PAGE_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %17, align 4
  br label %32

32:                                               ; preds = %100, %4
  %33 = load i32, i32* %13, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* @PAGE_SHIFT, align 4
  %37 = lshr i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = icmp ugt i32 %33, %37
  br i1 %38, label %39, label %101

39:                                               ; preds = %32
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @PAGE_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub i32 %45, 1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load i32, i32* %10, align 4
  %51 = sub i32 %50, 1
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %49, %39
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = load i32, i32* %16, align 4
  %61 = sub i32 %59, %60
  store i32 %61, i32* %18, align 4
  %62 = load %struct.file*, %struct.file** %5, align 8
  %63 = load %struct.address_space*, %struct.address_space** %6, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @pagecache_write_begin(%struct.file* %62, %struct.address_space* %63, i32 %64, i32 %65, i32 0, %struct.page** %11, i8** %12)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %164

70:                                               ; preds = %58
  %71 = load %struct.page*, %struct.page** %11, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @zero_user(%struct.page* %71, i32 %72, i32 %73)
  %75 = load %struct.file*, %struct.file** %5, align 8
  %76 = load %struct.address_space*, %struct.address_space** %6, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load %struct.page*, %struct.page** %11, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @pagecache_write_end(%struct.file* %75, %struct.address_space* %76, i32 %77, i32 %78, i32 %79, %struct.page* %80, i8* %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  br label %164

86:                                               ; preds = %70
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @BUG_ON(i32 %90)
  store i32 0, i32* %19, align 4
  %92 = load %struct.address_space*, %struct.address_space** %6, align 8
  %93 = call i32 @balance_dirty_pages_ratelimited(%struct.address_space* %92)
  %94 = load i32, i32* @current, align 4
  %95 = call i64 @fatal_signal_pending(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load i32, i32* @EINTR, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %19, align 4
  br label %164

100:                                              ; preds = %86
  br label %32

101:                                              ; preds = %32
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %163

105:                                              ; preds = %101
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @PAGE_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ule i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %164

114:                                              ; preds = %105
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %10, align 4
  %117 = sub i32 %116, 1
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i32, i32* %10, align 4
  %122 = sub i32 %121, 1
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %120, %114
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %16, align 4
  %132 = sub i32 %130, %131
  store i32 %132, i32* %18, align 4
  %133 = load %struct.file*, %struct.file** %5, align 8
  %134 = load %struct.address_space*, %struct.address_space** %6, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %18, align 4
  %137 = call i32 @pagecache_write_begin(%struct.file* %133, %struct.address_space* %134, i32 %135, i32 %136, i32 0, %struct.page** %11, i8** %12)
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %164

141:                                              ; preds = %129
  %142 = load %struct.page*, %struct.page** %11, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @zero_user(%struct.page* %142, i32 %143, i32 %144)
  %146 = load %struct.file*, %struct.file** %5, align 8
  %147 = load %struct.address_space*, %struct.address_space** %6, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = load %struct.page*, %struct.page** %11, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @pagecache_write_end(%struct.file* %146, %struct.address_space* %147, i32 %148, i32 %149, i32 %150, %struct.page* %151, i8* %152)
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %141
  br label %164

157:                                              ; preds = %141
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @BUG_ON(i32 %161)
  store i32 0, i32* %19, align 4
  br label %163

163:                                              ; preds = %157, %101
  br label %164

164:                                              ; preds = %163, %156, %140, %113, %97, %85, %69
  %165 = load i32, i32* %19, align 4
  ret i32 %165
}

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @pagecache_write_begin(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @pagecache_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @balance_dirty_pages_ratelimited(%struct.address_space*) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
