; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_revert.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_revert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i64, i32, i64, i32, %struct.iovec*, i32, %struct.bio_vec*, %struct.pipe_inode_info* }
%struct.iovec = type { i64 }
%struct.bio_vec = type { i64 }
%struct.pipe_inode_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@MAX_RW_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iov_iter_revert(%struct.iov_iter* %0, i64 %1) #0 {
  %3 = alloca %struct.iov_iter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bio_vec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iovec*, align 8
  %12 = alloca i64, align 8
  store %struct.iov_iter* %0, %struct.iov_iter** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %196

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @MAX_RW_COUNT, align 8
  %19 = icmp ugt i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %196

24:                                               ; preds = %16
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %27 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %31 = call i32 @iov_iter_is_pipe(%struct.iov_iter* %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %111

34:                                               ; preds = %24
  %35 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %36 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %35, i32 0, i32 7
  %37 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %36, align 8
  store %struct.pipe_inode_info* %37, %struct.pipe_inode_info** %5, align 8
  %38 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %39 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %6, align 4
  %41 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %42 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %34, %84
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %47 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %45, %53
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %102

62:                                               ; preds = %44
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %4, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %71 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i64 0, i64* %7, align 8
  br label %102

75:                                               ; preds = %68, %62
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %6, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %81 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %75
  %85 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %86 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %94 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %92, %100
  store i64 %101, i64* %7, align 8
  br label %44

102:                                              ; preds = %74, %58
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %105 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %108 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %110 = call i32 @pipe_truncate(%struct.iov_iter* %109)
  br label %196

111:                                              ; preds = %24
  %112 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %113 = call i32 @iov_iter_is_discard(%struct.iov_iter* %112)
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %196

117:                                              ; preds = %111
  %118 = load i64, i64* %4, align 8
  %119 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %120 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ule i64 %118, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i64, i64* %4, align 8
  %125 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %126 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %127, %124
  store i64 %128, i64* %126, align 8
  br label %196

129:                                              ; preds = %117
  %130 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %131 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %4, align 8
  %134 = sub i64 %133, %132
  store i64 %134, i64* %4, align 8
  %135 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %136 = call i64 @iov_iter_is_bvec(%struct.iov_iter* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %167

138:                                              ; preds = %129
  %139 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %140 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %139, i32 0, i32 6
  %141 = load %struct.bio_vec*, %struct.bio_vec** %140, align 8
  store %struct.bio_vec* %141, %struct.bio_vec** %9, align 8
  br label %142

142:                                              ; preds = %138, %163
  %143 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %144 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %143, i32 -1
  store %struct.bio_vec* %144, %struct.bio_vec** %9, align 8
  %145 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %10, align 8
  %147 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %148 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  %151 = load i64, i64* %4, align 8
  %152 = load i64, i64* %10, align 8
  %153 = icmp ule i64 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %142
  %155 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %156 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %157 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %156, i32 0, i32 6
  store %struct.bio_vec* %155, %struct.bio_vec** %157, align 8
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* %4, align 8
  %160 = sub i64 %158, %159
  %161 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %162 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  br label %196

163:                                              ; preds = %142
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* %4, align 8
  %166 = sub i64 %165, %164
  store i64 %166, i64* %4, align 8
  br label %142

167:                                              ; preds = %129
  %168 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %169 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %168, i32 0, i32 4
  %170 = load %struct.iovec*, %struct.iovec** %169, align 8
  store %struct.iovec* %170, %struct.iovec** %11, align 8
  br label %171

171:                                              ; preds = %167, %192
  %172 = load %struct.iovec*, %struct.iovec** %11, align 8
  %173 = getelementptr inbounds %struct.iovec, %struct.iovec* %172, i32 -1
  store %struct.iovec* %173, %struct.iovec** %11, align 8
  %174 = getelementptr inbounds %struct.iovec, %struct.iovec* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %12, align 8
  %176 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %177 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = load i64, i64* %4, align 8
  %181 = load i64, i64* %12, align 8
  %182 = icmp ule i64 %180, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %171
  %184 = load %struct.iovec*, %struct.iovec** %11, align 8
  %185 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %186 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %185, i32 0, i32 4
  store %struct.iovec* %184, %struct.iovec** %186, align 8
  %187 = load i64, i64* %12, align 8
  %188 = load i64, i64* %4, align 8
  %189 = sub i64 %187, %188
  %190 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %191 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %190, i32 0, i32 2
  store i64 %189, i64* %191, align 8
  br label %196

192:                                              ; preds = %171
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* %4, align 8
  %195 = sub i64 %194, %193
  store i64 %195, i64* %4, align 8
  br label %171

196:                                              ; preds = %183, %154, %123, %116, %102, %23, %15
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iov_iter_is_pipe(%struct.iov_iter*) #1

declare dso_local i32 @pipe_truncate(%struct.iov_iter*) #1

declare dso_local i32 @iov_iter_is_discard(%struct.iov_iter*) #1

declare dso_local i64 @iov_iter_is_bvec(%struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
