; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_hash.c_ceph_str_hash_rjenkins.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_hash.c_ceph_str_hash_rjenkins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_str_hash_rjenkins(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %9, align 4
  store i32 -1640531527, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %16, %2
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 12
  br i1 %15, label %16, label %97

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = add nsw i32 %21, %26
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 16
  %33 = add nsw i32 %27, %32
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 24
  %39 = add nsw i32 %33, %38
  %40 = add nsw i32 %17, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 5
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %49, 8
  %51 = add nsw i32 %45, %50
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 6
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 16
  %57 = add nsw i32 %51, %56
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 7
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 24
  %63 = add nsw i32 %57, %62
  %64 = add nsw i32 %41, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 9
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 8
  %75 = add nsw i32 %69, %74
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 10
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 16
  %81 = add nsw i32 %75, %80
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 11
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 24
  %87 = add nsw i32 %81, %86
  %88 = add nsw i32 %65, %87
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @mix(i32 %89, i32 %90, i32 %91)
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 12
  store i8* %94, i8** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %95, 12
  store i32 %96, i32* %9, align 4
  br label %13

97:                                               ; preds = %13
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %4, align 4
  %100 = add i32 %98, %99
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  switch i32 %101, label %188 [
    i32 11, label %102
    i32 10, label %110
    i32 9, label %118
    i32 8, label %126
    i32 7, label %134
    i32 6, label %142
    i32 5, label %150
    i32 4, label %157
    i32 3, label %165
    i32 2, label %173
    i32 1, label %181
  ]

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 10
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = shl i32 %107, 24
  %109 = add nsw i32 %103, %108
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %97, %102
  %111 = load i32, i32* %8, align 4
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 9
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl i32 %115, 16
  %117 = add nsw i32 %111, %116
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %97, %110
  %119 = load i32, i32* %8, align 4
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 8
  %125 = add nsw i32 %119, %124
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %97, %118
  %127 = load i32, i32* %7, align 4
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 7
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = shl i32 %131, 24
  %133 = add nsw i32 %127, %132
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %97, %126
  %135 = load i32, i32* %7, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 6
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl i32 %139, 16
  %141 = add nsw i32 %135, %140
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %97, %134
  %143 = load i32, i32* %7, align 4
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 5
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = shl i32 %147, 8
  %149 = add nsw i32 %143, %148
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %97, %142
  %151 = load i32, i32* %7, align 4
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 4
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 %151, %155
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %97, %150
  %158 = load i32, i32* %6, align 4
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 3
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = shl i32 %162, 24
  %164 = add nsw i32 %158, %163
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %97, %157
  %166 = load i32, i32* %6, align 4
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = shl i32 %170, 16
  %172 = add nsw i32 %166, %171
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %97, %165
  %174 = load i32, i32* %6, align 4
  %175 = load i8*, i8** %5, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = shl i32 %178, 8
  %180 = add nsw i32 %174, %179
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %97, %173
  %182 = load i32, i32* %6, align 4
  %183 = load i8*, i8** %5, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = add nsw i32 %182, %186
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %181, %97
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @mix(i32 %189, i32 %190, i32 %191)
  %193 = load i32, i32* %8, align 4
  ret i32 %193
}

declare dso_local i32 @mix(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
